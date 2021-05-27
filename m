Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9FF4A39296F
	for <lists+blinux-list@lfdr.de>; Thu, 27 May 2021 10:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622103757;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vqDtkW6ODMjBfHmx2eaL/rjtrFbRrchAoB2vK1otnnM=;
	b=EwZBF8CfZ3cphjbfGlAsDH8CvP1brzM8TiS5wLHft1pC0VDVnrlSklVas6qCftV03yeSLq
	GY26UIdP6FpLzKNV1DyERZbRSdrQAxsii1URfxdAkwmbVtwOyWTjFXxwVCuWCEc+ENSeAR
	HdvtzrUHsirvQSYEcqUl8cPTuIS1XnE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-ucNZ2pjPNmGiOxZ0DIsSFA-1; Thu, 27 May 2021 04:22:35 -0400
X-MC-Unique: ucNZ2pjPNmGiOxZ0DIsSFA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CD9D801106;
	Thu, 27 May 2021 08:22:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0EAB5C3E4;
	Thu, 27 May 2021 08:22:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BACF255348;
	Thu, 27 May 2021 08:22:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14R8MCnT030784 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 May 2021 04:22:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B1AEB209A7ED; Thu, 27 May 2021 08:22:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACFD0209A80E
	for <blinux-list@redhat.com>; Thu, 27 May 2021 08:22:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75CBA85CBD8
	for <blinux-list@redhat.com>; Thu, 27 May 2021 08:22:09 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
	[209.85.218.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-448-m25p6t78OeeyoSYWDDTYdA-1; Thu, 27 May 2021 04:22:03 -0400
X-MC-Unique: m25p6t78OeeyoSYWDDTYdA-1
Received: by mail-ej1-f44.google.com with SMTP id e12so219386ejt.3
	for <blinux-list@redhat.com>; Thu, 27 May 2021 01:22:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=TuzHNzJjJKShaFAHOJp9k2eUtnU0TmK/lRjKSTpNYZ4=;
	b=kM4+StM43f9jUfi4P/z5iZ/estIz5PEACb+9VAUI9L1qPD/ksoFh7O2RHxArin3NWc
	AmecFxhxH2ix1xxQAdORYZY4UdLQD97OI2Yc8FXIgLjuPYM7KsuchrYm34uKOUs6zNP/
	X/F1U+QBGZWoRHHkArpmUzY2HFPam6TaqLmjHJU1owAD11N/+mbCGBcwU3RvL2PwIGMN
	Q21aRJ2NN0ZCzwr2Uq2d9rOloB3hk7s9gOnHCC0FXpsxftr0/trnqvsIIRXmrj7bTdFc
	gIiWTdsTYOYuCtkEILH5++j4vl0fffHclMxSy5e18YAR4kW7qmn4G7wPpEji2O+Ez6IQ
	ShNQ==
X-Gm-Message-State: AOAM531SgUDU2TyFIegeyeUPzjIREEeYKG+wLetk5UfkZ306XkSDTGJR
	r4g8V057jDojIj3mqit8Hk8GpluiwtxiBg==
X-Google-Smtp-Source: ABdhPJzBzaLbRDaAJ0Xwr64k2w88kBNI1qxS0FxL7rFjk75wfFvbcAynJkjmgD9xCv09rH80VU09Kg==
X-Received: by 2002:a17:906:1982:: with SMTP id
	g2mr2621992ejd.184.1622103721772; 
	Thu, 27 May 2021 01:22:01 -0700 (PDT)
Received: from [192.168.1.8] (net-2-44-25-150.cust.vodafonedsl.it.
	[2.44.25.150]) by smtp.gmail.com with ESMTPSA id
	jt11sm609513ejb.83.2021.05.27.01.22.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 27 May 2021 01:22:01 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <093e01d74e9e$05841320$108c3960$@gmail.com>
	<F29E6A18-19B8-4EDC-87F4-234C18D8952F@linux-a11y.org>
Message-ID: <c738734a-d667-7ec6-3f5b-ce52961327a4@gmail.com>
Date: Thu, 27 May 2021 10:21:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <F29E6A18-19B8-4EDC-87F4-234C18D8952F@linux-a11y.org>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKSSBoYXZlIHRyaWVkIHNlbmRpbmcgdGhpcyBtZXNzYWdlIGEgY3VwcGxl
IG9mIHRpbWVzLCBidXQgdGhlIG1lc3NhZ2UgCmJvZHkgd2FzIHRvbyBiaWcuCgpCZWNhdXNlIG9m
IHRoYXQsIEkgYW0gdHJ5aW5nIGEgRHJvcGJveCBsaW5rLgoKV2hlbiB5b3UgY2xpY2sgb24gaXQs
IGl0J2xsIGF1dG9tYXRpY2FsbHkgZG93bmxvYWQgYSBmaWxlIGNhbGxlZCBGZW5yaXIgCmxvZy50
eHQKCkhlcmUgaXMgdGhlIGxpbms6CgoKaHR0cHM6Ly93d3cuZHJvcGJveC5jb20vcy94amx4bnhr
enIzejdzOHAvZmVucmlyJTIwbG9nLnR4dD9kbD0xCgoKQmVzdCByZWdhcmRzLgoKRnJhbmNpc2Nv
LgoKT24gNS8yMi8yMSA5OjE1IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+IEhvd2R5LAo+Cj4gQ29uZmlndXJlIHNwZWVjaC1kaXNwYXRjaGVyIGlzIG5vdCBu
ZWVkZWQuIEJ5IGRlZmF1bHQgZmVucmlyIHVzZXMgdGhlIGdlbmVyaWMgc3BlZWNoIGRyaXZlci4g
VGhpcyBkb2VzICBnZW5lcmF0ZSBzcGVlY2ggYnkgc3Vwcm9jZXNzaW5nLiBTbyBiYXNpY2FsbHkg
c2FtZSBsaWtlIGNhbGxpbmcgZXNwZWFrLW5nIGluIHNoZWxsLgo+Cj4gSSBkb250IHN0YXkgYXQg
aG9tZSBjdXJyZW50bHkgYXMgaSBoZWxwIGEgZnJpZW5kIHRvIGtub2NrIGRvd24gYSB3YWxsIGlu
IGhpcyBob3VzZSAodGhhdHMgZnVuKS4KPgo+IENhbiB5b3Ugc2VuZCBtZSBhIGRlYnVnIGZpbGUg
b2YgZmVucmlycyBpbml0aWFsaXNhdGlvbiBwcm9ncmVzcyB0byBhbmFseXplIHlvdXIgaXNzdWU/
Cj4KPiBzdWRvIGZlbnJpciAtZAo+Cj4gVGhlbiBwcmVzcwo+IEN0cmwgKyBjCj4KPiBZb3UgZmlu
ZCBhIGZpbGUgL3RtcC9mZW5yaXI8UElEPl88dGltZXN0YW1wPi5sb2cKPiAgIAo+IFdoZXJlIFBJ
RCBpcyByZXBsYWNlZCBieSBwcm9jZXNzIElEIGFuZCB0aW1lc3RhbXAgd2l0IGN1cnJlbnQgZGF0
ZS4gL3RpbWUKPgo+IFN0aWxsIGxvb2tpbmcgZm9yd2FydCB0byBtZWV0IHlvdSBpbiBJUkMgOkQK
Pgo+IENoZWVycyBjaHJ5cwo+Cj4gVm9uIG1laW5lbSBpUGhvbmUgZ2VzZW5kZXQKPgo+PiBBbSAy
Mi4wNS4yMDIxIHVtIDAyOjA0IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+Cj4+IO+7v0hpIGRpZCB5b3UgdGVsbCBz
cGVlY2gtZGlzcGF0Y2hlciB0byB1c2UgZXNwZWFrLW5nPy4gIFlvdSBjYW4gY2hhbmdlIHRoaXMg
aW4gZXRjL3NwZWVjaC1kaXNwYXRjaGVyL3NwZWVjaGRkY2NmLiBTcGVlY2hkZGNjZiBIVEguCj4+
Cj4+IE1hdHRoZXcKPj4KPj4KPj4KPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJv
bTogYmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1ib3VuY2VzQHJl
ZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
Cj4+IFNlbnQ6IEZyaWRheSwgTWF5IDIxLCAyMDIxIDc6MzkgQU0KPj4gVG86IGJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gU3ViamVjdDogUmU6IEEgcXVlc3Rpb24gYWJvdXQgRmVucmlyIG9uIEFy
Y2ggbGludXgKPj4KPj4gSGVsbG8gdGhlcmUsCj4+Cj4+Cj4+IHJlbW92aW5nIGVzcGVhayBkb2Vz
bid0IGZpeCBpdCwgdGhlIHNhbWUgcHJvYmxlbSBzdGlsbCBwZXJzaXN0cy4KPj4KPj4gQmVzdCBy
ZWdhcmRzLgo+Pgo+PiBGcmFuY2lzY28uCj4+Cj4+Cj4+PiBPbiA1LzIxLzIxIDEyOjM2IFBNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSG93ZHkKPj4+Cj4+
Pj4gSSBoYXZlIGVzcGVhaywgc294LCBhbmQgeGNsaXAgaW5zdGFsbGVkLCBwbHVzIHB1bHNlYXVk
aW8sCj4+Pj4gcHVsc2VhdWRpby1hbHNhLCBhbHNhLXV0aWxzIGFuZCBwbHVnaW5zLgo+Pj4gZXNw
ZWFrLW5nIGlzIHVzZWQgYnkgZGVmYXVsdCBpbnN0ZWFkIG9mIGVzcGVhay4gZXNwZWFrLW5nIGlz
IHRoZQo+Pj4gc3VjY2Vzc29yIG9mIGVzcGVhay4gZG8gdGFrZSBjYXJlIHRvIG5vdCBpbnN0YWxs
IGVzcGVhayBidXQgZXNwZWFrLW5nCj4+PiBhbmQgZ2l2ZSBhbm90aGVyIHNob3QgOikuCj4+Pgo+
Pj4KPj4+PiBBbSAyMS4wNS4yMSB1bSAxMTo0NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb246Cj4+Pj4gSGVsbG8gdGhlcmUsCj4+Pj4KPj4+Pgo+Pj4+IEp1c3QgZm9y
IHRoZSBoZWNrIG9mIGl0LCBJIHJlZGlkIGEgY2xlYW4gaW5zdGFsbCBvZiBhcmNoIHdpdGgKPj4+
PiBwdWxzZWF1ZGlvIHRoaXMgdGltZSwgYW5kIEkgY29uZmlndXJlZCBldmVyeXRoaW5nIEkgbmVl
ZGVkIHJ1bm5pbmcKPj4+PiB0aGUgc2ggc2NyaXB0IHlvdSBpbmRpY2F0ZWQuCj4+Pj4KPj4+PiBJ
dCBoYWxmIHdvcmtzLCBhbmQgaGFsZiBkb2Vzbid0Lgo+Pj4+Cj4+Pj4gV2hhdCBJIG1lYW4gYnkg
dGhhdCBpcyB0aGF0IHdoZW4gSSByZXN0YXJ0ZWQgdGhlIG1hY2hpbmUsIGp1c3QgYSBmZXcKPj4+
PiBzZWNvbmRzIGFnbyBhbmQgcmFuIGZlbnJpciBhcyBzdWRvZXIsIGl0IHBsYXllZCB0aGUgc291
bmQgaWNvbiwgdGhpbmcKPj4+PiB0aGF0IHdpdGggcGlwZXdpcmUgZGlkbid0IGhhcHBlbiwgYnV0
IGdhdmUgbWUgbm8gc3BlZWNoIGF0IGFsbC4KPj4+Pgo+Pj4+IEkgaGF2ZSBlc3BlYWssIHNveCwg
YW5kIHhjbGlwIGluc3RhbGxlZCwgcGx1cyBwdWxzZWF1ZGlvLAo+Pj4+IHB1bHNlYXVkaW8tYWxz
YSwgYWxzYS11dGlscyBhbmQgcGx1Z2lucy4KPj4+Pgo+Pj4+IEFueSBzdWdnZXN0aW9ucz8KPj4+
Pgo+Pj4+IFRoYW5rcyBhZ2Fpbi4KPj4+Pgo+Pj4+IEJlc3QgcmVnYXJkcy4KPj4+Pgo+Pj4+IEZy
YW5jaXNjby4KPj4+Pgo+Pj4+IE9uIDUvMTgvMjEgNTowNiBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gSG93ZHksCj4+Pj4+Cj4+Pj4+IGRvIHlvdSBo
YXZlIHRoZSByZXF1aXJlbWVudHMgZm9yIHRoZSBnZW5lcmljIHNvdW5kIC8gdm9pY2UgZHJpdmVy
cwo+Pj4+PiBpbnN0YWxsZWQ/Cj4+Pj4+IFRvIGdldCBzdXJlLCByZWluc3RhbGwgaXQgZXhlY3V0
ZToKPj4+Pj4gc3VkbyBwYWNtYW4gLVMgc294IGVzcGVhay1uZyB4Y2xpcAo+Pj4+Pgo+Pj4+PiBz
b3ggaXMgdXNlZCBmb3IgcGxheSBzb3VuZCwgZXNwZWFrIGZvciB2b2ljZSBvdXRwdXQgaW4gdGhl
IGRlZmF1bHQKPj4+Pj4gY29uZmlndXJhdGlvbiwgeGNsaXAgaXMgYSBmdW5ueSB0b3kgdG8gbGV0
IGZlbnJpciBzaGFyZSB0aGUKPj4+Pj4gY2xpcGJvYXJkIGJldHdlZW4geW91ciBHVUkgYW5kIFRl
cm1pbmFsLgo+Pj4+Pgo+Pj4+PiBzdGFydCBmZW5yaXIgZm9yIHRlc3RpbmcgaW4gZm9yZWdyb3Vu
ZCAtIHlvdSBjYW4gc3RvcCBpdCB1c2luZyBDVFJMICsgQwo+Pj4+PiBzdWRvIGZlbnJpcgo+Pj4+
Pgo+Pj4+PiBkaWQgeW91IGhlYXIgdGhlIHN0YXJ0dXAgc291bmQ/IGZlbnJpciBwbGF5cyBhIGxp
dHRsZSBzb3VuZGljb24gYXQKPj4+Pj4gc3RhcnR1cC4KPj4+Pj4KPj4+Pj4gaWYgbm90LCB0aGVu
IHB1bHNlYXVkaW8gaXMgbm90IGNvbmZpZ3VyZWQuCj4+Pj4+IHNob3J0IHN0b3J5IGV4ZWN1dGU6
Cj4+Pj4+ICMgY29uZmlndXJlIHVzZXIKPj4+Pj4gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFk
ZXIvdG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4+Pj4+ICMgY29uZmlndXJlIHJvb3QKPj4+Pj4g
c3VkbyAvdXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uu
c2gKPj4+Pj4KPj4+Pj4gIyBuZWVkIHRvIHJlc3RhcnQgdGhhdCB0aGUgY29uZmlndXJhdGlvbiBm
b3IgYm90aCBnZXQgYWN0aXZlCj4+Pj4+Cj4+Pj4+IHJlc3RhcnQKPj4+Pj4KPj4+Pj4gdGhlbiBy
ZXRyeQo+Pj4+Pgo+Pj4+PiBzdWRvIGZlbnJpcgo+Pj4+Pgo+Pj4+PiBsb25nIHN0b3JyeTogZmVu
cmlyIG5lZWRzIGJ5IGRlZmF1bHQgdG8gcnVuIGFzIHJvb3QgdG8gY29sbGVjdCB0aGUKPj4+Pj4g
ZGF0YSBvbiB5b3VyIHNjcmVlbiBvciBjYXB1dHJlIHRoZSBpbnB1dCBkZXZpY2VzLiBpZiBmZW5y
aXIgc3BlYWtzCj4+Pj4+IG9yIGNyZWF0ZXMgc291bmQsIGl0IGRvZXMgdGhpcyBhcyByb290IHVz
ZXIuIHlvdSB3b250IGhlYXIgc291bmQgb2YKPj4+Pj4gYW4gb3RoZXIgdXNlciBieSBwdWxzZWF1
ZGlvIChzb3VuZCBzZXJ2ZXIpIGRlc2lnbi4gV2UgbmVlZCB0bwo+Pj4+PiB0cmFuc3BvcnQgdGhl
IHNvdW5kIGNyZWF0ZWQgYXMgcm9vdCB0byB0aGUgc291bmQgc2VydmVyIHlvdSBoYXZlCj4+Pj4+
IHJ1bm5pbmcgYXMgdXNlciB0byBmaW5hbGx5IGhlYXIgdGhlIHNvdW5kLgo+Pj4+Pgo+Pj4+PiBm
ZW5yaXIgcHJvdmlkZXMgMiBzY3JpcHRzIChzZWUgYWJvdmUpIHRvIGNvbmZpZ3VyZSB0aGUgcm9v
dCBwdXNlCj4+Pj4+IGF1ZGlvIHRvIHNlbmQgdGhlIGRhdGEgdG8geW91ciB1c2VyIGFuZCBjb25m
aWd1cmUgdXNlciBwdWxzZSBhdWRpbwo+Pj4+PiB0byBsaXN0ZW4gdG8gdGhlIHNvdW5kIHNlbnQg
Ynkgcm9vdCBhbmQgcGxheSBpdC4KPj4+Pj4KPj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Cj4+Pj4+
Cj4+Pj4+IDE4LjA1LjIxIHVtIDE0OjQ2IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbjoKPj4+Pj4KPj4+Pj4+IEhlbGxvIHRoZXJlLAo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+
PiBUaGFua3Mgc28gbXVjaCwgbm93LCB0aGF0IHBhcnQgb2YgdGhlIHByb2JsZW0gaXMgc29sdmVk
IQo+Pj4+Pj4KPj4+Pj4+IFRoZSBvdGhlciBwYXJ0LCBob3cgZXZlciwgdGhhdCBpcyBub3Qgc29s
dmVkLCBpcyB0aGF0IGZlbnJpcgo+Pj4+Pj4gZG9lc24ndCBzcGVhayB3aXRoIGVzcGVhaywgb3Ig
ZXNwZWFrLW5nLgo+Pj4+Pj4KPj4+Pj4+IERvIEkgaGF2ZSB0byBzZXQgc29tZXRoaW5nIHNvbWV3
aGVyZSBmb3IgdGhhdCB0byBoYXBwZW4/Cj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzIGFnYWluLgo+Pj4+
Pj4KPj4+Pj4+IEJlc3QgcmVnYXJkcy4KPj4+Pj4+Cj4+Pj4+PiBGcmFuY2lzY28uCj4+Pj4+Pgo+
Pj4+Pj4gT24gNS8xOC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4+Pj4+PiBIb3dkeSBGcmFuY2lzY28sCj4+Pj4+Pj4KPj4+Pj4+PiBpIGRv
bnQga25vdyB3aHkgdGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVuZGVuY3kgYnkKPj4+Pj4+PiBw
eXRob24tcHllbmNoYW50IGlmIHRob3NlIGFyZSBzcHJlYWQgd2FybmluZ3MuIE1heWJlIHRoaXMg
c2hvdWxkCj4+Pj4+Pj4gYmUgcmVwb3J0ZWQgdG8gdGhlIHBhY2thZ2UgbWFpbnRhaW5lci4gQnV0
IGFueXdheS4KPj4+Pj4+Pgo+Pj4+Pj4+IHlvdSBjYW4gYXNrIHBhY21hbiB3aGF0IHBhY2thZ2Ug
Y29udGFpbnMgdGhlIHNwZWNpZmljIGZpbGUgeW91Cj4+Pj4+Pj4gbmVlZCBieSAic3VkbyBwYWNt
YW4gLUZ5IGZpbGVuYW1lIi4gaGVyZSBpIGRpZCB0aGlzIGZvciBmb3IKPj4+Pj4+PiBleGFtcGxl
IGluIGxpYnZva2tvLnNvOgo+Pj4+Pj4+Cj4+Pj4+Pj4gMTA6MTQgW2NocnlzQGJsYWNrYmVhc3Qg
fl0gOikgJCBzdWRvIHBhY21hbiAtRnkgbGlidm9pa2tvLnNvCj4+Pj4+Pj4gW3N1ZG9dIFBhc3N3
b3J0IGbDvHIgY2hyeXM6Cj4+Pj4+Pj4gOjogU3luY2hyb25pc2llcmUgUGFrZXRkYXRlbmJhbmtl
bi4uLgo+Pj4+Pj4+IGNvcmUgOTAzLDUgS2lCICA2LDE3IE1pQi9zIDAwOjAwCj4+Pj4+Pj4gWyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyNdCj4+Pj4+Pj4gMTAwJQo+Pj4+Pj4+IGV4dHJhIDksMyBNaUIgIDI2LDkg
TWlCL3MgMDA6MDAKPj4+Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10KPj4+Pj4+PiAxMDAlCj4+Pj4+
Pj4gY29tbXVuaXR5IDIyLDggTWlCICAyOSw2IE1pQi9zIDAwOjAxCj4+Pj4+Pj4gWyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyNdCj4+Pj4+Pj4gMTAwJQo+Pj4+Pj4+IG11bHRpbGliIDIyMiw1IEtpQiAgMTIsOCBN
aUIvcyAwMDowMAo+Pj4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXQo+Pj4+Pj4+IDEwMCUKPj4+Pj4+
PiBleHRyYS9saWJ2b2lra28gNC4zLjEtMQo+Pj4+Pj4+ICAgICB1c3IvbGliL2xpYnZvaWtrby5z
bwo+Pj4+Pj4+IDEwOjE1IFtjaHJ5c0BibGFja2JlYXN0IH5dIDopICQKPj4+Pj4+Pgo+Pj4+Pj4+
IHNvIHRoZSBwYWNrYWdlIHlvdSBuZWVkIGZvciBsaWJ2b2trby5zbyBpcyAibGlidm9pa2tvIgo+
Pj4+Pj4+IHRvIHNpbGVuY2Ugb3V0IGFsbCB0aGUgd2FybmluZ3MgZG8gdGhpczoKPj4+Pj4+PiBz
dWRvIHBhY21hbiAtUyBsaWJ2b2lra28gbnVzcGVsbCBoc3BlbGwKPj4+Pj4+Pgo+Pj4+Pj4+IHRo
aXMgaW5zdGFsbCBhbGwgMyAoSU1PIG9wdGlvbmFsIGRlcGVuZGVuY3kncywgd2hhdCBzaG91bGQg
bm90Cj4+Pj4+Pj4gY3JlYXRlIGEgd2FybmluZywgYnV0IHdlbGwsIGl0IGlzIGxpa2UgaXQgaXMp
Cj4+Pj4+Pj4KPj4+Pj4+PiBpIHVzZSBpcnNzaSBhcyBJUkMgKGNvbW1hbmRsaW5lKSBjbGllbnQu
IHRoZXJlIGlzIGFsc28gUGlkZ2luIChhcwo+Pj4+Pj4+IGdyYXBoaWNhbCBjbGllbnQpLiBib3Ro
IGFyZSB2ZXJ5IG5pY2UuCj4+Pj4+Pj4KPj4+Pj4+PiBsb29raW5nIGZvcndhcmQgdG8gc2VlIHlv
dSBpbiBJUkMgOikuCj4+Pj4+Pj4KPj4+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+Pgo+Pj4+Pj4+
Cj4+Pj4+Pj4gQW0gMTguMDUuMjEgdW0gMDg6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Pj4+PiBIZWxsbyB0aGVyZSwKPj4+Pj4+Pj4KPj4+Pj4+Pj4K
Pj4+Pj4+Pj4gSSBtYW5hZ2VkIHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJyYXJpZXMsIGJ1dCBu
b3QgdGhlIG90aGVyIHR3bywKPj4+Pj4+Pj4gc28gdGhhbmtzIGZvciB0aGF0Lgo+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBBbHNvLCB0aGFua3MgZm9yIHN1Z2dlc3RpbmcgdG8gdXNlIHlheSwgSSBqdXN0IGlu
c3RhbGxlZCBpdCwgSQo+Pj4+Pj4+PiBkaWRuJ3Qga25vdyB5YW91cnQgd2FzIGRlcHJlY2F0ZWQu
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE15IHF1ZXN0aW9uIG5vdyBpcywgYW5kIHRoaXMnbGwgYmUgZHVt
LCB3aGF0IGFyZSByZWNvbW1lbmRlZCBJUkMKPj4+Pj4+Pj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0
IHRoZW0gd29ya2luZz8gd2hhdCBzaG91bGQgSSBrbm93IGJlZm9yZQo+Pj4+Pj4+PiBqb2luaW5n
IGFuIElSQyBjaGFubmVsLCB3aGF0IGV2ZXIgaXQgbWlnaHQgYmU/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+
IFRoYW5rcyBhZ2Fpbi4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBGcmFuY2lzY28uCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIDUvMTcvMjEgOToxOSBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4+IEhpLCBJ
IGp1c3QgcG9zdGVkIGEgbGluayB0byB0aGlzIG1lc3NhZ2UgaW50ZW5kZWQgdG8gY2hyeXMKPj4+
Pj4+Pj4+IChGZW5yaXIgYXV0aG9yKSBvbiB0aGUgI2ExMXkgY2hhbm5lbCBvZiBpcmMubGludXgt
YTExeS5vcmcuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gTWF5YmUgam9pbiBoaW0gdGhlcmU/Cj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4gRGlkaWVyCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gTGUgMTcvMDUvMjAyMSDD
oCAyMDoxNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+
Pj4+Pj4+Pj4gSGVsbG8gZXZlcnlvbmUsCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
IEkganVzdCBkb3dubG9hZGVkIGZlbnJpci1naXQgZnJvbSB0aGUgQVVSIHVzaW5nIHlhb3VydC4K
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3aXRoIHRoZSBj
b21tYW5kCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBmZW5yaXIKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
IGluIGEgdGVybWluYWwsIGhvdyBldmVyLCBpIGdldCBmZW5yaXIncyBzdGFydHVwIHNvdW5kLCBh
bmQgdGhpczoKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gW2ZyYW5jaXNjb0BCbHVl
Ymxpbmsgfl0kIGZlbnJpcgo+Pj4+Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoq
OiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcKPj4+Pj4+Pj4+PiBwbHVnaW46IGxpYmhzcGVs
bC5zby4KPj4+Pj4+Pj4+PiAwOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1
Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+Pj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklO
RyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5nCj4+Pj4+Pj4+Pj4gcGx1Z2luOiBsaWJ2
b2lra28uc28uCj4+Pj4+Pj4+Pj4gMTogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBO
byBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdB
Uk5JTkcgKio6IDIwOjEyOjQ1LjM3NzogRXJyb3IgbG9hZGluZwo+Pj4+Pj4+Pj4+IHBsdWdpbjog
bGlibnVzcGVsbC5zbwo+Pj4+Pj4+Pj4+IC40OiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZp
bGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Pj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVlY2ggZWl0aGVyLgo+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gVGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gRnJhbmNpc2Nv
Lgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

