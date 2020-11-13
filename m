Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id BDCA22B1E88
	for <lists+blinux-list@lfdr.de>; Fri, 13 Nov 2020 16:24:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605281093;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vS2dhAi7cAjX+KIRhSf/Hpi4r92hB0BMvzIScEGwzGs=;
	b=KeTC+SqsYCA9G13uVNvRkwgb6XMLHznmD9SGdOcqm+O0ktlDvoyM3xRDef5kxsdyJGCdfb
	NwegABjkEz6S1ZAogzOeNf9Zt8QNYV6Y3CkIiP3g/qqCIE9qbLIuTJUdGyJ+RyR8OzmJ4j
	i/2C7Fz8FaiNEEvKUoy8W6Ae/cOizY8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-XRKSU5dGMLmsO0nrTjwlRQ-1; Fri, 13 Nov 2020 10:24:51 -0500
X-MC-Unique: XRKSU5dGMLmsO0nrTjwlRQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5929F42394;
	Fri, 13 Nov 2020 15:24:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0749055785;
	Fri, 13 Nov 2020 15:24:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3995F58103;
	Fri, 13 Nov 2020 15:24:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0ADFOd0v020830 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Nov 2020 10:24:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DF1D1205EB1B; Fri, 13 Nov 2020 15:24:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D915A2023438
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 15:24:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 86BE990E433
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 15:24:36 +0000 (UTC)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
	[209.85.166.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-256-Z9FDuH4yOKaz0nEgMQXu-Q-1; Fri, 13 Nov 2020 10:24:33 -0500
X-MC-Unique: Z9FDuH4yOKaz0nEgMQXu-Q-1
Received: by mail-il1-f182.google.com with SMTP id p10so8810808ile.3
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 07:24:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YlcATwLPIzW6NnCOkr6siBnPANnzapm0LuBlf6Yolow=;
	b=f5FkJACUr1zzrd8/T+XWsGvomYg8RSKuHpq16Oo4px56BTxiz3L8xcdQaoLyWPh6J9
	khPpPGVc9NwG9/ocsyac58gehvdD+WlhDOe86PesryYqd9p9WtXhpSkn7qUy3flzDNg7
	9ABeY2oNLXYgSj5n/Uia7IPrMtF9Mza+Q/BDjkNY24K9FMfxlT4X4y+ut75DiIAIZesC
	UUkXG2h10YIAssH+SRa8st2g31Wqea+vV2OdNulgMsdyfBX54my2T5MUvb2lpiX1zHek
	dTY4JLy2SEBogSxd5KlAN7JvUVp/6Gx8FIb70vJP+tkfrijg1L/BHHCXotOrttSicrws
	SoZg==
X-Gm-Message-State: AOAM530HGLy9+DZzE0geEa49iPPuS60peDtGxRDbANPgY7Aq5eNX7HhR
	zwGV5rlnlC/EtKjBkG42H0yuuh1BAqglWYErsdixoL0ScBQ=
X-Google-Smtp-Source: ABdhPJwiFcbUC71yX6XvxGugPcn10nfTc6jr4HYi46qY8bh520/xkd+0kHomLFdkZhCwaEauEnhotwsRGlY8xau3ISU=
X-Received: by 2002:a92:650c:: with SMTP id z12mr246724ilb.53.1605281068002;
	Fri, 13 Nov 2020 07:24:28 -0800 (PST)
MIME-Version: 1.0
References: <CAO2sX31vKWFMQmjUJqv7jSKqL+hqGB0T45-R8xMT42WiPHx_UA@mail.gmail.com>
	<79AC4C3D-02AF-4682-88C3-E45D6FE47757@gmail.com>
In-Reply-To: <79AC4C3D-02AF-4682-88C3-E45D6FE47757@gmail.com>
Date: Fri, 13 Nov 2020 09:24:14 -0600
Message-ID: <CAGJxbF7eV9uwyuk-e27HwnLgW6Dc54viVanc5N9R86xB3sE-eQ@mail.gmail.com>
Subject: Re: [raspberry-vi] Re: Possibly Off-Topic: Earphone recommendations.
To: raspberry-vi@freelists.org
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
	Orca List <orca-list@gnome.org>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3YW50ZWQgYSBwYWlyIGZvciBteSBjb21wdXRlciwgYW5kIGJvdWdodCBhIHBhaXIgb2YgVHVy
dGxlIEJlYWNoIGdhbWluZwpoZWFkcGhvbmVzLiBBbWF6aW5nIGJhc2UsIGJ1dCB5b3UgaGF2ZSB0
byBjaGFyZ2UgdGhlbSwgZXZlbiB0aG91Z2ggdGhleSdyZQp3aXJlZC4gVGhleSBkbyBsYXN0IGZv
ciBhIGdvb2QgMTUgaG91cnMgdGhvdWdoLiBUaGV5IGNvbm5lY3QgdGhyb3VnaCBhIDMuNQpNTSBo
ZWFkcGhvbmUgamFjay4KRGV2aW4gUHJhdGVyCnIuZC50LnByYXRlckBnbWFpbC5jb20KCgpPbiBG
cmksIE5vdiAxMywgMjAyMCBhdCA5OjIyIEFNIFNjb3R0IEdyYW5hZG9zIDxzY290dC5ncmFuYWRv
c0BnbWFpbC5jb20+Cndyb3RlOgoKPiBTbyB0aGUgaXNzdWUgaXMgdGhlIGNvc3QuICBJIGp1c3Qg
Ym91Z2h0IGEgZ3JlYXQgcGFpciBidXQgdGhleSB3ZXJlCj4gc2V2ZXJhbCBodW5kcmVkLgo+ICAg
ICAgICAgSWYgeW91IHdvdWxkIHNwZW5kIG1vcmUgbW9uZXkgb3IgY29uc2lkZXIgaXQsIHRoZSBT
b255IFcxMDAwLVhNNAo+IGFyZSBwcmV0dHkgZ3JlYXQgY2Fucy4gIEZhbnRhc3RpYyBub2lzZSBj
YW5jZWxhdGlvbiwgZ3JlYXQgYmx1ZXRvb3RoCj4gc3VwcG9ydCwgdmVyeSB0dW5hYmxlIGZvciBp
bmRpdmlkdWFsIGVhcnMsIDM1KyBob3VyIGJhdHRlcnkgbGlmZSwgZ3JlYXQKPiBhdWRpbyBjaGFy
YWN0ZXJpc3RpY3MsIGFuZCBhbHNvIGFsbG93cyBmb3IgdXNlIG9mIGEgY2FibGUgaW5zdGVhZCBv
Zgo+IGJsdWV0b290aC4KPiAgICAgICAgIFBsYW50cm9uaWNzIG1ha2VzIGEgcGFpciBjYWxsZWQg
dGhlIDgyMjAgdGhhdCBoYXZlIHNpbWlsYXIKPiBmZWF0dXJlcyBhcmUgYXJlIGFsc28gd29uZGVy
ZnVsLgo+Cj4gSSBkb27igJl0IGtub3cgd2hhdCB0byBzdWdnZXN0IGluIGxvd2VyIGNvc3Qgb3B0
aW9ucyBidXQgdGhpcyBpcyB0aGUga2l0IEnigJltCj4gdXNpbmcgcmlnaHQgbm93Lgo+Cj4gVGhh
bmtzCj4KPgo+ID4gT24gTm92IDEzLCAyMDIwLCBhdCAxMDoxMCBBTSwgTWV3dGFtZXIgPG1ld3Rh
bWVyQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gU29ycnkgaWYgdGhpcyBxdWFsaWZpZXMgYXMg
b2ZmLXRvcGljIGZvciBhbnkgb2YgdGhlIG1haWxpbmcgbGlzdHMgSSdtCj4gPiBzZW5kaW5nIGl0
IHRvLCBidXQgSSBmaWd1cmUgSSdtIG5vdCB0aGUgb25seSBvbmUgb24gYW55IG9mIHRoZXNlIGxp
c3RzCj4gPiB3aG8gd2VhcnMgZWFycGhvbmVzIGFsbW9zdCBldmVyeSB3YWtpbmcgbW9tZW50IGFu
ZCBjb25zaWRlcnMgdGhlbSBvbmUKPiA+IG9mIHRoZSBtb3N0IGVzc2VudGlhbCBwaWVjZXMgb2Yg
dGVjaG5vbG9neSB0aGV5IHVzZSBvbiBhIGRhaWx5IGJhc2lzLgo+ID4KPiA+IEFueXdheXMsIGFz
IHNvIG9mdGVuIGhhcHBlbnMsIGZyZXF1ZW50IHBsdWdnaW5nIGFuZCB1biBwbHVnZ2luZyBsZWFk
Cj4gPiB0byB0aGUgd2lyZXMgb24gdGhlIHBsdWcgb2YgbXkgUGFuYXNvbmljIGVhciBjbGlwcyB0
byBmcmF5IHRvIHRoZQo+ID4gcG9pbnQgb25lIGVhcnBpZWNlICBpcyBzaWxlbnQgbW9zdCBvZiB0
aGUgdGltZSwgYW5kIGkgaGF2ZSBubyBzcGFyZQo+ID4gZWFycGhvbmVzLCBzbyBJJ20gaW4gdGhl
IG1hcmtldCBmb3IgYSBuZXcgcGFpci4KPiA+Cj4gPiBNeSBpbml0aWFsIHRob3VnaHQgaXMgdG8g
anVzdCBvcmRlciBhIGNvdXBsZSBwYWlycyBvZiB0aGUgc2FtZQo+ID4gUGFuYXNvbmljIGVhcmNs
aXBzIEkndmUgYmVlbiB1c2luZyBmb3IgeWVhcnMuIFRoZXkncmUgY29tZm9ydGFibGUKPiA+IGVu
b3VnaCBmb3IgYWxsIGRheSB3ZWFyLCBoYXZlIG5vIHNvdW5kIHF1YWxpdHkgaXNzdWVzIEkgY2Fu
IGRldGVjdCwKPiA+IGFyZSBmYWlybHkgaW5leHBlbnNpdmUofiQxMi0xNSBvbiBBbWF6b24gZGVw
ZW5kaW5nIG9uIGNvbG9yIGNob2ljZSksCj4gPiBhbmQgSSBrbm93IHdoYXQgSSdtIGdvaW5nIHRv
IGdldC4KPiA+Cj4gPiBPbiB0aGUgb3RoZXIgaGFuZCwgdGhlIFBhbmFzb25pY3MgSSd2ZSBiZWVu
IHVzaW5nIGZvciB0aGUgbGFzdCA1IHllYXJzCj4gPiBvciBzbyBoYXZlIGFsd2F5cyBoYWQgYW4g
YW5ub3lpbmdseSBzaG9ydCB3aXJlKEkgbmVlZCB0byBoaWtlIHVwIG15Cj4gPiBwYW50cyBmb3Ig
dGhlIHdpcmUgdG8gcmVhY2ggbXkgcG9ydGFibGUgbWVkaWEgcGxheWVyIGluIG15IHBvY2tldCBh
bmQKPiA+IEkgbW9yZSBvZnRlbiB0aGFuIG5vdCBoYXZlIHRvIHVzZSBhbiBleHRlbnNpb24gY2Fi
bGUgd2l0aCBteSBkZXNrdG9wKSwKPiA+IHdyYXBwaW5nIHRoZSB3aXJlIGFyb3VuZCBteSBuZWNr
IHdoZW4gbm8gcGx1Z2dlZCBpbnRvIGFueXRoaW5nIGlzIGtpbmQKPiA+IG9mIGFubm95aW5nLCBh
bmQgdGhleSBzZWVtIHRvIGJlIGdldHRpbmcgbGVzcyBkdXJhYmxlKEkndmUgZ29uZQo+ID4gdGhy
b3VnaCB0d28gcGFpcnMgc2luY2UgbGFzdCBEZWNlbWJlciwgdGhlIHRocmVlIHByZXZpb3VzIHBh
aXJzIGVhY2gKPiA+IGF2ZXJhZ2VkIGFib3V0IGEgeWVhci1hbmQtYS1oYWxmIGJhc2VkIG9uIG15
IEFtYXpvbiBvcmRlciBoaXN0b3J5KSwKPiA+IGFuZCBpdCB3b3VsZCBiZSBuaWNlIHRvIGJlIGFi
bGUgdG8gZGl0Y2ggdGhlIHdpcmUgd2hlbiBpdCBpc24ndAo+ID4gbmVlZGVkLgo+ID4KPiA+IEJ1
dCBpdCdzIG5lYXJseSBpbXBvc3NpYmxlIHRvIGZpbmQgd2lyZWxlc3MgZWFycGhvbmVzIHRoYXQg
YXJlIGVhcgo+ID4gY2xpcCBzdHlsZSwgYW5kIGV2ZW4gZXhwYW5kaW5nIHRvIG90aGVyIGZvcm0g
ZmFjdG9ycywgaXQncyBoYXJkIHRvCj4gPiBmaW5kIGEgcGFpciB3aXRoIGhhbGZ3YXkgZGVjZW50
IGJhdHRlcnkgbGlmZSwgZm9yIHVuZGVyICQzMCwgYW5kIEkndmUKPiA+IHlldCB0byBmaW5kIGEg
cGFpciB0aGF0IGVpdGhlciBoYWQgdGhlIG9wdGlvbiBvZiB1c2luZyBhbiBhdXggY2FibGUKPiA+
IGZvciBjb25uZWN0aW5nIHRvIGRldmljZXMgd2l0aG91dCBCbHVldG9vdGggb3IgYSBkb25nbGUg
eW91IGNvdWxkIGp1c3QKPiA+IHBsdWcgaW50byBhIDMuNW1tIGphY2ssIGFuZCBiZXN0IEkgY2Fu
IHRlbGwsIEJsdWV0b290aCBhZGFwdG9ycyBhcmVuJ3QKPiA+IGFsbCB0aGF0IGFmZm9yZGFibGUg
ZWl0aGVyLgo+ID4KPiA+IFNvIGFueW9uZSBoYXZlIGFueSByZWNvbW1lbmRhdGlvbnMgZm9yIGEg
Z29vZCwgaW5leHBlbnNpdmUgcGFpciBvZgo+ID4gZWFycGhvbmVzIHRoYXQgZWl0aGVyIGhhcyBh
IGxvbmcsIHJ1Z2dlZCB3aXJlIG9yIHdoaWNoIGlzIHdpcmVsZXNzCj4gPiB3aXRoIGdvb2QgYmF0
dGVyeSBsaWZlIGFuZCBhIGdvb2Qgc29sdXRpb24gZm9yIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5
Cj4gPiB3aXRoIHdpcmVkLW9ubHkgYXVkaW8gc291cmNlcz8gUHJlZmVyYWJseSBvZiB0aGUgZWFy
IGNsaXAKPiA+IHN0eWxlKHJlZ3VsYXIgZWFyYnVkcyBhcmUgdG9vIGluc2VjdXJlIGZvciBteSBs
aWtpbmcsIGVhcnBsdWcgc3R5bGUKPiA+IGVhcmJ1ZHMgaXJyaXRhdGUgbXkgZWFyIGNhbmFscyBh
bmQgbGVhdmUgbWUgcHJvbmUgdG8gZWFyIGluZmVjdGlvbnMsIEkKPiA+IGhhdmUgYmlnIGVhcnMs
IHNvIHJldHJvIGVhcm11ZmYgc3R5bGUgaGVhZHBob25lcyBsZWF2ZSBtZSB3aXRoIHNvcmUKPiA+
IGNhcnRpbGFnZSBhZnRlciBhIGZldyBob3VycywgYW5kIGJlaGluZCB0aGUgaGVhZCBlYXJwaG9u
ZXMgc291bmQgbGlrZQo+ID4gdGhleSdkIGJlIHVuY29tZm9ydGFibGUgd2l0aCBob3cgbXVjaCBv
ZiBteSB0aW1lIGlzIHNwZW50IGVpdGhlcgo+ID4gbGF5aW5nIGRvd24gd2l0aCBteSBoZWFkIG9u
IGEgcGlsbG93LCBpbiBhIHJlY2xpbmVyIHdpdGggbXkgaGFkIG9uIHRoZQo+ID4gaGVhZHJlc3Qs
IG9yIGxlYW5pbmcgYWdhaW5zdCBhIHdhbGwuKS4gQW5kIGZvciB3aXJlZCBzb2x1dGlvbnMsCj4g
PiBzb21ldGhpbmcgd2l0aCBhIGJ1aWx0LWluIGNvcmQgc3Bvb2wgb3IgcmVjb21tZW5kYXRpb25z
IGZvciBhIHRoaXJkCj4gPiBwYXJ0IHNwb29sIHRoYXQgY291bGQgYmUgYWRkZWQgd291bGQgYmUg
YXBwcmVjaWF0ZWQuCj4gPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQo+ID4gVGhlIHJhc3BiZXJyeS12aSBtYWlsaW5nIGxpc3QKPiA+
IEFyY2hpdmVzOiBodHRwOi8vd3d3LmZyZWVsaXN0cy5vcmcvYXJjaGl2ZXMvcmFzcGJlcnJ5LXZp
Cj4gPiBBZG1pbmlzdHJhdGl2ZSBjb250YWN0OiA8bWlrZS5yYXlAYnRpbnRlcm5ldC5jb20+Cj4g
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+ID4gUmFzcGJlcnJ5IFBpIGFuZCB0aGUgUmFzcGJlcnJ5IFBpIGxvZ28gYXJlIHRyYWRl
bWFya3Mgb2YgdGhlIFJhc3BiZXJyeQo+IFBpIEZvdW5kYXRpb24uCj4gPgo+ID4gVGhpcyBsaXN0
IGlzIG5vdCBhZmZpbGlhdGVkIHRvIHRoZSBSYXNwYmVycnkgUGkgRm91bmRhdGlvbiBhbmQgdGhl
IHZpZXdzCj4gYW5kIGF0dGl0dWRlcyBleHByZXNzZWQgYnkgdGhlIHN1YnNjcmliZXJzIHRvIHRo
aXMgbGlzdCBkbyBub3QgcmVmbGVjdAo+IHRob3NlIG9mIHRoZSBGb3VuZGF0aW9uLgo+ID4KPiA+
IE1pa2UgUmF5LCBsaXN0IGNyZWF0b3IsIEphbnVhcnkgMjAxMwo+ID4KPgo+ID09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gVGhlIHJh
c3BiZXJyeS12aSBtYWlsaW5nIGxpc3QKPiBBcmNoaXZlczogaHR0cDovL3d3dy5mcmVlbGlzdHMu
b3JnL2FyY2hpdmVzL3Jhc3BiZXJyeS12aQo+IEFkbWluaXN0cmF0aXZlIGNvbnRhY3Q6IDxtaWtl
LnJheUBidGludGVybmV0LmNvbT4KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IFJhc3BiZXJyeSBQaSBhbmQgdGhlIFJhc3BiZXJy
eSBQaSBsb2dvIGFyZSB0cmFkZW1hcmtzIG9mIHRoZSBSYXNwYmVycnkgUGkKPiBGb3VuZGF0aW9u
Lgo+Cj4gVGhpcyBsaXN0IGlzIG5vdCBhZmZpbGlhdGVkIHRvIHRoZSBSYXNwYmVycnkgUGkgRm91
bmRhdGlvbiBhbmQgdGhlIHZpZXdzCj4gYW5kIGF0dGl0dWRlcyBleHByZXNzZWQgYnkgdGhlIHN1
YnNjcmliZXJzIHRvIHRoaXMgbGlzdCBkbyBub3QgcmVmbGVjdAo+IHRob3NlIG9mIHRoZSBGb3Vu
ZGF0aW9uLgo+Cj4gTWlrZSBSYXksIGxpc3QgY3JlYXRvciwgSmFudWFyeSAyMDEzCj4KPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

