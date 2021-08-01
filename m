Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 37A813DCAE3
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 11:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627809807;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Wn2tIl12SN1aDnGd5ogvcX2YmwrUllJdxDzkQpulTTk=;
	b=binCsTwA0SI+ux7q/+hi3CJlVkkqzUhC0MHyFEeuspfT077+qTLEkMDA7tbqGSc5CyxGQY
	NTa3WnUDn0naSo6b4qIyEXq7lKLJ5xfz5sFjMQST6wj8vXPVUwRIxQWiwIzs1W3VU+Ah6d
	odnHb/KpIVuRybedzm9ROAwFu5l3i3k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-2-gzeW3nMd2shV3voIocDQ-1; Sun, 01 Aug 2021 05:23:25 -0400
X-MC-Unique: 2-gzeW3nMd2shV3voIocDQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 43F46107ACF5;
	Sun,  1 Aug 2021 09:23:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B092C5D6AB;
	Sun,  1 Aug 2021 09:23:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 608961800FFC;
	Sun,  1 Aug 2021 09:23:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1719MvNx019987 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 05:22:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 726A063F88; Sun,  1 Aug 2021 09:22:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E1D764695
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 09:22:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD1F38007B1
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 09:22:53 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-136-hn85hnndMHa1MVjA5vBlKA-1; Sun, 01 Aug 2021 05:22:51 -0400
X-MC-Unique: hn85hnndMHa1MVjA5vBlKA-1
Received: by mail-wm1-f48.google.com with SMTP id b128so8595758wmb.4
	for <blinux-list@redhat.com>; Sun, 01 Aug 2021 02:22:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=0vu2vput2MufjVcHmVJ6BLxYC4vKwCqsiAXu29f9vko=;
	b=Wn48llKh7c56aL0iXnTJxfakiOX7TfNlQ1z+ttQUhu4uw0Js4G7laAxVS96/sQh0La
	3fLXqN0YbzTJdZaZ5hXAjkv+dEbyl6tTkxIN4nqoKbDvwAJ53TvmFqNVizHf73JK+C78
	ssWuxBIgNBzLbIJCf6FZid4XNdsA+/TSeY7VlWtBCFe8QU5/IyNGWcDMcA/jq5oCT5mS
	EV7CjwR0kqDco2Tj/QdouIdFZu7thE8DfalOFOxAfG74XTQX33FGAM+jog6OrU7J31WF
	rQVn+3e2bB5ZijjbFd4tI3xpC5kRO0gWQDqYs9pr+qxhmvX/U3eU4sWtNzZc0GUmXpnE
	aIaw==
X-Gm-Message-State: AOAM533TqSuIwYvyd2aj6jt51XNzhT8Q/wxl6wMgnE4iYwJ7hn45FBIf
	bUlcjXPR6U9ypbXXVnYLeNrMtI1HJ82aKA==
X-Google-Smtp-Source: ABdhPJxeAQ3h2j6ZkdhN3p8aUPZPTxkCZLI1/3GndyesXNOkRNKdI3GX2ksNfU1mgLvVjUg5jVXx8w==
X-Received: by 2002:a7b:c76c:: with SMTP id x12mr8138255wmk.157.1627809770166; 
	Sun, 01 Aug 2021 02:22:50 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id z5sm6509655wmp.26.2021.08.01.02.22.49
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 01 Aug 2021 02:22:49 -0700 (PDT)
Subject: Re: Solus and Broken Speech
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e05aa6fd-c296-33f8-94b5-5f42321a69b9@gmail.com>
	<3B5735C6-9D0B-4A77-B5CA-7A9B240A5645@gmail.com>
Message-ID: <05ca956d-827e-a44a-4f28-df1ba7d53d86@gmail.com>
Date: Sun, 1 Aug 2021 10:22:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <3B5735C6-9D0B-4A77-B5CA-7A9B240A5645@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWVhbnQgdG8gc2VuZCB0aGlzIHRvIHRoZSBsaXN0LCBidXQgZm9yIG1lIG9uY2UgaW5zdGFsbGVk
IHRoZSBjaG9wcGluZXNzIAp3ZW50IGF3YXkgYnV0IEkgZGlkIGhhdmUgaXQgb24gYSBsaXZlIHN5
c3RlbSB5ZXMsIGJ1dCBhcyBzYWlkIG9uY2UgCmluc3RhbGxlZCBpdCB3b3JrcyBmaW5lIGhlcmUu
CgpJIGluc3RhbGxlZCBNYXRlIGZpcnN0IGFuZCB0aGVuIGFkZGVkIEJ1ZGdpZSBvbiB0b3Agb2Yg
aXQgc2luY2UgdGhlIApCdWRnaWUgLmlzbyBJIGdvdCBlcnJvcmVkIG91dCBkdXJpbmcgaW5zdGFs
bAoKT24gNy8zMS8yMSA0OjE4IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+IEhpIQo+Cj4gVGhhbmtzIGZvciBnZXR0aW5nIGJhY2sgdG8gbWUuCj4KPiBEaWQg
eW91IGhhdmUgdGhlIGNob3BwaW5lc3Mgb24gdGhlIGxpdmUgc3lzdGVtPyAgSSdtIHBsYXlpbmcg
d2l0aCB0aGUgbGl2ZSwgc28sIGRvbid0IGtub3cgd2hldGhlciBJJ2xsIGhhdmUgaXQgb24gdGhl
IGluc3RhbGxlZC4gIENhbiB0cnkgdGhlIEJ1ZGdpZSBvciBHTk9NRTsgc2VlIGlmIHRoZSBzcGVl
Y2ggaXMgc21vb3RoZS4KPgo+IENoZWVycywKPgo+IERhdmUgSC4KPgo+Cj4KPiBTZW50IGZyb20g
bXkgaVBob25lCj4KPj4gT24gSnVsIDMxLCAyMDIxLCBhdCA1OjExIEFNLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4K
Pj4g77u/T2RkbHkgZW5vdWdoIEkndmUgbm90IG5vdGljZWQgdGhlIGNob3BwaW5lc3Mgd2l0aCB0
aGUgQnVkZ2llIGRlc2t0b3AsIHNvIEknbSB3b25kZXJpbmcgaWYgaXQncyBzb21ldGhpbmcgTWF0
ZSBzcGluIHNwZWNpZmljIHdpdGggaG93IFNvbHVzIGRvZXMgdGhpbmdzIHRob3VnaD8KPj4KPj4+
IE9uIDcvMzEvMjEgMzoyNSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4+IEknbSBub3cgcnVubmluZyBTb2x1cyBhbmQgZmluZCB0aGF0IGJvdGggcHVsc2Vh
dWRpbyBhbmQgcGlwZXdpcmUgYXJlIGFjdHVhbAo+Pj4gZXhlY3V0YWJsZSBmaWxlcy4gIEZ1cnRo
ZXJtb3JlLCBwaXBld2lyZSBpcyBub3QgcnVubmluZywgYXMgaW5kaWNhdGVkIGJ5Cj4+PiB0eXBp
bmc6Cj4+Pgo+Pj4gcHMgYXV4IHxncmVwIHBpcGV3aXJlCj4+Pgo+Pj4gT25seSByZXR1cm4gaXMg
bXkgY29tbWFuZC4KPj4+Cj4+PiBXaGVuIEkgZG8gdGhlIHNhbWUgdGhpbmcsIGJ1dCB3aXRoIHB1
bHNlYXVkaW8sIEkgZ2V0IHNldmVyYWwgbGluZXMuICBJJ20KPj4+IGdvaW5nIHRvIGFzc3VtZSB0
aGlzIG1lYW5zIHRoYXQgcHVsc2VhdWRpbyBpcyBydW5uaW5nLiAgV2hhdCwgbmV4dCwgdG8gdHJ5
LAo+Pj4gdG8gc21vb3RoZSB0aGlzIHNwZWVjaCBvdXQ/Cj4+Pgo+Pj4KPj4+IFRoYW5rcywKPj4+
Cj4+Pgo+Pj4gRGF2ZSAgSC4KPj4+Cj4+Pgo+Pj4KPj4+Cj4+PiBPbiBTYXQsIEp1bCAzMSwgMjAy
MSBhdCAxOjU2IEFNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+Pj4gYmxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pgo+Pj4+IFllcy4gSWYgUGlwZXdpcmUgaXMg
aW5zdGFsbGVkLCBwdWxzZWF1ZGlvIHdvdWxkIGJlIGEgc3ltbGluay4gVHJ5Cj4+Pj4gcnVubmlu
ZyBmaWxlIGxpa2Ugc286Cj4+Pj4KPj4+PiBmaWxlIC91c3IvYmluL3B1bHNlYXVjaW8KPj4+Pgo+
Pj4+IFRoaXMgc2hvdWxkIHRlbGwgeW91IGV4YWN0bHkgd2hhdCB5b3UncmUgZGVhbGluZyB3aXRo
LiBJdCBkb2VzIGFwcGVhcgo+Pj4+IHlvdSB3aWxsIHdhbnQgdG8gY2hhbmdlIHlvdXIgQXVkaW9P
dXRwdXRNZXRob2QgdG8gImFsc2EiIGluCj4+Pj4gL2V0Yy9zcGVlY2gtZGlzcGF0Y2hlci9zcGVl
Y2hkLmNvbmYuIFRoYXQgd2lsbCBiZSB0aGUgZWFzaWVzdCB3YXkgdG8KPj4+PiBzb2x2ZSB0aGUg
Y2hvcHB5IHNwZWVjaCBwcm9ibGVtIEkgdGhpbmsuCj4+Pj4KPj4+PiB+S3lsZQo+Pj4+Cj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+
Cj4+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

