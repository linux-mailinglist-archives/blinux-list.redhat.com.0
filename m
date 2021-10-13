Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EEFFF42B1E0
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 03:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634087633;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hrchrm8V+92bJ+6dypOD003ygoKNefmwKdI4lo/JFD4=;
	b=X7+JQ5LIxkwoVgyTPx6OhqhhsOliMbmiRZCPZX9bWcvjN0GOE5ZCwsn0TCbcccox82n2nZ
	h+p/mlfgLh97+lvhNaYIO9PuokMuTb6bVVLjZSNRbdmg/aX7tJoilC8MlglNyjnkyR7ad6
	YnjNBwXUY0wcp+Yda2iO64dArhUt1Vs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-IdGLGHIcOdyxF2-Nj3Ligw-1; Tue, 12 Oct 2021 21:13:49 -0400
X-MC-Unique: IdGLGHIcOdyxF2-Nj3Ligw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7E8718414A0;
	Wed, 13 Oct 2021 01:13:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D17DC19E7E;
	Wed, 13 Oct 2021 01:13:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B64584E58F;
	Wed, 13 Oct 2021 01:13:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19D1BT6h005721 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 21:11:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BA9C640CFD10; Wed, 13 Oct 2021 01:11:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4D1440CFD05
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 01:11:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97857801E6E
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 01:11:29 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-201-E-0Q1t2CPJiqgatx0PJBnw-1; Tue, 12 Oct 2021 21:11:27 -0400
X-MC-Unique: E-0Q1t2CPJiqgatx0PJBnw-1
Received: by mail-ed1-f42.google.com with SMTP id i20so3058779edj.10
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 18:11:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=ushCTOAl5eJ2JM5jdTwh5LAXVc1V3u0m1AsGNeF2iHk=;
	b=TUBl5FWHJx5jYOvseKX2MhPk/qQI8Jl0utSpOKE6nqSkaPbTNieAU6P2lGWLDDsSak
	72Lrv5LLXRQ+X8xmUU1pIkGohLdI6mIpWFSIbI+xT2q/xCCK6C/YMFB08gbsq183DFTl
	hn6K6lqWiRnLORXI7+iTCYbFmFXa4Gdk6ZZ23XerFXfVp/pCFpW7F9UGPORFXtuBy4Ke
	bP7ux2wVDyjgSRY5OoqoByOGM0k0jJqMzSfjNO5ke2gm4pNwnwOqwapx2MyGW6nfThZm
	pHdVPKUUqJUtDuGYoc4b0ql2mMQJO2M3S9ONILcpTiCUlRQDcw3JdCDXxL9Te0ia+Nc4
	I5ug==
X-Gm-Message-State: AOAM53109J+wf152pkI1j4rGrW+qqXjM5eE9Gl+/TOUYR7GqMstyRVwf
	4wdVSBWKX/I5Cx/185K4EDRvMYV018JC1w==
X-Google-Smtp-Source: ABdhPJzPMVirnCmG32YUpq4W9IjTFRLzRJhaXmnpffySAXeOCMIjN/o1qAnTSt2wM+mysEkhftGguQ==
X-Received: by 2002:a17:906:480a:: with SMTP id
	w10mr37940377ejq.262.1634087486062; 
	Tue, 12 Oct 2021 18:11:26 -0700 (PDT)
Received: from smtpclient.apple ([41.216.201.36])
	by smtp.gmail.com with ESMTPSA id y30sm368932ejk.74.2021.10.12.18.11.24
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Oct 2021 18:11:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Wed, 13 Oct 2021 03:11:22 +0200
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
	<B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
	<f8b8b6b0-9563-4816-3ce2-058e670df4ca@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <f8b8b6b0-9563-4816-3ce2-058e670df4ca@gmail.com>
Message-Id: <31844D3C-400D-4A9E-8536-1DA523C6B15B@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIHRyaWVkIHJ1bm5pbmcgTGludXggTWludCwgTWF0ZSBhZGRpdGlvbiwgYnV0IHRoZXJl
IGFyZSB0aGluZ3MgdGhhdCBqdXN0IGRvZXNuJ3Qgd29yayBjb3JyZWN0bHksIGFuZCBJJ20gbm90
IHNwZW5kaW5nIHRoZSB0aW1lIHRvIG1ha2UgbXkgbWFjaGluZSBkbyB3aGF0IEkgbmVlZCBpdCB0
byBkby4KCkFuIGV4YW1wbGUgb2YgdGhpcywgYW55IExUUyBVYnVudHUgb3IgVWJ1bnR1IHNwaW4g
d2lsbCBiZSBydW5uaW5nIEJSTFRUWSA2LjAsIGFuZCBnZXR0aW5nIHRoZSBuZXdlc3QgdG8gd29y
ayBpcyBhIHBhaW4sIGFuZCwgeWVzLCBJIG5lZWQgNi4zIGF0IGxlYXN0LCBiZWNhdXNlIGFueSBv
bGRlciBkb2Vzbid0IHN1cHBvcnQgbXkgQnJhaWxsZU9uZSBmcm9tIEh1bWFud2FyZS4KCkdldHRp
bmcgbXkgcmVhZHkgYnVpbHQgV2luZG93cyBRZW11IFZNIHRvIHdvcmsgaXMgYWxzbyByYXRoZXIg
cGFpbmZ1bGwuCgpNeSBzdWdnZXN0aW9uIGZvciBhIExpbnV4IGRpc3RybyBmb3IgYm90aCB0aGUg
bmV3YmllIGFuZCBvbGQgaGFuZCB3b3VsZCBiZSBTbGludCwgYSB2ZXJ5IGdvb2QgZGlzdHJvIGJh
c2VkIG9uIFNsYWNrd2FyZSBhbmQgU2FsaXguCgpFdmVyeXRoaW5nIHdvcmtzIHZlcnkgd2VsbCwg
bW9zdGx5IG91dCBvZiB0aGUgYm94LCBob3dldmVyLCBpZiB5b3UgYXJlIGZpeGF0ZWQgb24gdXNp
bmcgU3lzdGVtZCwgZG9uJ3QgdG91Y2ggYW55IFNsYWNrd2FyZSBiYXNlZCBkaXN0cm9zLgoKSWYg
eW91IHdhbnQgdG8gZ2l2ZSBpdCBhIGdvLCBnZXQgaXQgZnJvbSBzbGludC5mciA8aHR0cDovL3Ns
aW50LmZyLz4uCgpJIGhhZCB0byBwdXQgV2luYmxvYXQgYmFjayBvbiBteSBIdWF3ZWkgTWF0ZUJv
b2ssIGJ1dCBJIGNhbm5vdCBiYXJlIHRoZSBwYWluIGFueW1vcmUsIHRodXMsIGFmdGVyIEkgd2Fr
ZSBiYWNrIHVwLCBJIHdpbGwgYmUgcHV0dGluZyB0cnVzdHkgU2xpbnQgYmFjayB3aGVyZSBpdCBz
aG91bGQgYmUsIGluIHRoZSBwbGFjZSBvZiB0aGUgc3B5d2FyZSBtYXNxdWVyYWRpbmcgYXMgYW4g
b3BlcmF0aW5nIHN5c3RlbSB3aGljaCBhbGwgcmlnaHQgdGhpbmtpbmcgaHVtYW5zIHNob3VsZCBo
YXRlIG9uIHByaW5jaXBsZS4KClllcywgSSdtIHRpcmVkLCB0aHVzLCBtb3JlIGJydXRhbGx5IGhv
bmVzdCB0aGFuIHVzdWFsLgoKV2FybSByZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCBm
cm9tIG15IE1hY0Jvb2sgQWlyCgpDb250YWN0OgoKUGhvbmU6ICsyNyAoMCk2MCA1MjUgOTE4MSA8
dGVsOi8vKzI3NjA1MjU5MTgxPgoKRW1haWw6IGJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tIDxt
YWlsdG86YnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20+CgpUd2l0dGVyOiBAYnJhbmR0c3RlZW5r
YW1wIDxodHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KCgoKCj4gT24gMTMg
T2N0IDIwMjEsIGF0IDAxOjIwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBJIGhhdmUgTGludXggTWludCAoTWF0
ZSBFZGl0aW9uKSwgb24gb25lIG9mIG15IG1hY2hpbmVzLiBUaGlzIGlzIGJhc2VkCj4gb24gVWJ1
bnR1IDIwLjA0LCB3aGljaCBpcyBhIGxvbmctdGVybSBzdGFibGUgdmVyc2lvbi4gSSBoZWFyLCBp
dCB3aWxsIGJlCj4gc3VwcG9ydGVkIHRpbCAyMDMwPyAgd2l0aCBvcmNhIGNvbmZpZ3VyZWQgZm9y
IHNwZWVjaDsgY2FuJ3QgdGVzdCB0aGUKPiBicmFpbGxlIHNldHVwLCBJIGhhdmUgbm8gZGlzcGxh
eS4gIFRyeSBvdXQgdGhlIGxpdmUgc3lzdGVtIGZyb20KPiBodHRwczovL2xpbnV4bWludC5jb20u
ICAKPiAKPiBIVEgsCj4gCj4gCj4gRGF2ZQo+IAo+IAo+IFNlbnQgZnJvbSBteSBUaGluayBQZW5n
dWluIEo0IGxhcHRvcCwgcnVubmluZyBUcmlzcXVlbCBHTlUvTGludXgsIHZlcnNpb24gOS4KPiAK
PiAKPiBEYXZlCj4gCj4gCj4gT24gMTAvMTIvMjEgNjoyOSBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gVGhpcyB3YXMgZmVkb3JhIDM0IG1hdGUuCj4+IAo+
Pj4gT24gT2N0IDEyLCAyMDIxLCBhdCA1OjE5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+IAo+Pj4gV2hhdCBk
aXN0cmlidXRpb24gaXMgdGhpcyBvbj8KPj4+IERldmluIFByYXRlcgo+Pj4gci5kLnQucHJhdGVy
QGdtYWlsLmNvbQo+Pj4gZ2VtaW5pOi8vdGlsZGUucGluay9+ZGV2aW5wcmF0ZXIvCj4+PiAKPj4+
IAo+Pj4gCj4+PiBPbiBUdWUsIE9jdCAxMiwgMjAyMSBhdCA0OjE2IFBNIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+Pj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4+PiAKPj4+PiBBZnRlciBpbnN0YWxsaW5nLCBJIGhlYXJkIOKAmXNjcmVlbi1yZWFkZXIgb2Zm
4oCZLCBzbyBJIHR1cm5lZCBvcmNhIG9uLgo+Pj4+IFRoZW4gSSB3YXMgdG9sZCB0byByZWJvb3Qu
Cj4+Pj4gQWZ0ZXIgcmVib290aW5nLCBJIHR1cm5lZCBvcmNhIG9uLCB0aGVuIGxvZ2dlZCBpbi4K
Pj4+PiBUaGVuLCBubyBzcGVlY2guCj4+Pj4gQ291bGQgbm90IGdldCBvcmNhIHdvcmtpbmcuCj4+
Pj4gCj4+Pj4+IE9uIE9jdCAxMiwgMjAyMSwgYXQgNzoxMiBBTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8Cj4+Pj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
Pj4+IEEgaHVnZSArMSBmb3IgRmVkb3JhIE1BVEUuIEkgaGF2ZSBpdCBydW5uaW5nIG9uIHR3byBj
b21wdXRlcnMgaGVyZSwgb25lCj4+Pj4gaXMgbm90IG1pbmUsIGFuZCBpdCB3b3JrcyBncmVhdC4g
T3JjYSBjb21lcyB3aXRoIGl0LCBhbmQgeW91IGNhbiBydW4gYSBmdWxsCj4+Pj4gaW5zdGFsbCBh
ZnRlciBwcmVzc2luZyBhbHQrZjIgdG8gb3BlbiB0aGUgcnVuIHdpbmRvdyBhbmQgdGhlbiBlbnRl
cmluZyB0aGUKPj4+PiB3b3JkIG9yY2EuIFdpZmkgZ2VuZXJhbGx5IHdvcmtzIG91dCBvZiB0aGUg
Ym94LCB0aG91Z2ggdGhlIE5ldHdvcmtNYW5hZ2VyCj4+Pj4gYXBwbGV0IHRoYXQgY29udHJvbHMg
aXQgZG9lc24ndCB0ZWxsIHlvdSB3aGF0IGl0IGlzLiBTdGlsbCwgeW91IGNhbiBqdXN0Cj4+Pj4g
aG9sZCB0aGUgYWx0IGFuZCBjb250cm9sIGtleXMgYW5kIGRvdWJsZSB0YXAgdGhlIHRhYiBrZXkg
dG8gZ2V0IHRvIHRoZSB0b3AKPj4+PiBwYW5lbCwgdGhlbiBzaGlmdCB0YWIgcGFzdCB0aGUgdG9n
Z2xlIGJ1dHRvbiBhbmQgcHJlc3MgdGhlIGVudGVyIGtleSB0bwo+Pj4+IGJyaW5nIHVwIHRoZSBt
ZW51IHRoYXQgaGFzIHlvdXIgd2lmaSBjb25uZWN0aW9ucy4gVGhlcmUncyBub3QgbXVjaCBtb3Jl
IHRvCj4+Pj4gdGVsbCBvdGhlciB0aGFuIGl0J3MgYSBncmVhdCBPUywgbm90IGp1c3QgZm9yIGxl
YXJuaW5nLCBidXQgZm9yIGRhaWx5IHVzZSwKPj4+PiBhbmQgb25lIG9mIHRoZSBjb21wdXRlcnMg
aW4gdGhlIGhvdXNlIHRoYXQgaXMgcnVubmluZyBpdCBpcyBldmVuIGJlaW5nIHVzZWQKPj4+PiBm
b3IgZ2FtaW5nIGFuZCBsaXZlIHN0cmVhbWluZy4gSWYgeW91IG5lZWQgdG8gZGlnIGRlZXBlciBp
bnRvIHRoZSBndXRzIG9mCj4+Pj4gdGhlIHN5c3RlbSwgaXQgYWxsb3dzIGZvciB0aGF0IGFzIHdl
bGwuIEkgZm9yIG9uZSBoaWdobHkgcmVjb21tZW5kIHRoZQo+Pj4+IEZlZG9yYSBNQVRFIHNwaW4u
Cj4+Pj4+IH5LeWxlCj4+Pj4+IAo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+IAo+Pj4+IAo+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

