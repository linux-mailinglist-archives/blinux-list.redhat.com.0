Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E224C5CCF
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 17:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645978681;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vvJD99ticV5KR33euzwsbdMp/SSEc849ka1x91JxxG0=;
	b=hS1oDFJTi9wsBowcwd0iOdlqGumHuFa9Jl3O6T//c25lKvJnOiROmPXYV0v+wST8+F5D3w
	LymssWgdBcJR0acCzZtlPE6ertaK6LDzlF+zo7ye/IqdiUYU5CXM+v62c1vWlhmEtVvGUY
	nFl5qSG29oKh88v5LNhZVfft30AjZT4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-673-ndag2RDAMF6Tox0LF9jQdg-1; Sun, 27 Feb 2022 11:17:58 -0500
X-MC-Unique: ndag2RDAMF6Tox0LF9jQdg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D621801AFE;
	Sun, 27 Feb 2022 16:17:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A8FC8547F;
	Sun, 27 Feb 2022 16:17:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5EFBD1809CB2;
	Sun, 27 Feb 2022 16:17:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RGHal3024402 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 11:17:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 79EA2C202CA; Sun, 27 Feb 2022 16:17:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 761C3C202C5
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 16:17:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 578A129AB3F3
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 16:17:36 +0000 (UTC)
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch
	[185.70.43.22]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-91-V1giyMRtOBK0owM_yNxqJw-1; Sun, 27 Feb 2022 11:17:34 -0500
X-MC-Unique: V1giyMRtOBK0owM_yNxqJw-1
Date: Sun, 27 Feb 2022 16:17:24 +0000
To: blinux-list@redhat.com
Subject: Re: Voting: Which game would you like to have on Linux?
Message-ID: <c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
In-Reply-To: <FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21RGHal3024402
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gZXZlcnlvbmUsCgp0aGFuayB5b3UgYWxsIGEgbG90IGZvciB5b3VyIHJlYWN0aW9ucywg
dGhleSB3ZXJlIHJlYWxseSBoZWxwZnVsIGluCmJldHRlciB1bmRlcnN0YW5kaW5nIHRoZSBuZWVk
cyBvZiBvdXIgTGludXggY29tbXVuaXR5LiA6KQoKCkknbSBnb2luZyB0byBhbnN3ZXIgZmV3IHF1
ZXN0aW9ucyB0aGF0IHNob3dlZCB1cC4KCgpXaGF0J3MgZ29pbmcgdG8gYmUgdGhlIG5hdHVyZSBv
ZiB0aGUgZ2FtZXM/CgoKUmlnaHQgbm93LCB0aGUgZ2FtZXMgYXJlIGdvaW5nIHRvIGJlIEdUSyBn
dWkgYXBwbGljYXRpb25zLiBUaGVpciBjb250cm9sCndpbGwgYmUgYSBoaWJyaWQgYmV0d2VlbiBw
YXJ0cyBoYW5kbGVkIGJ5IHN0YW5kYXJkIEdVSSBtZWFucyBsaWtlCnNldHRpbmdzLCBuZXcgZ2Ft
ZSBkaWFsb2cgZXRjLiBhbmQgYSBzcGVlY2ggaW50ZXJmYWNlLCBsaWtlIHRoZSBvbmUgeW91CmNh
biBmaW5kIGluIFNwb29uYmlsIGdhbWVzIGZvciB3aW5kb3dzLgoKClRUUyBpcyBnb2luZyB0byBi
ZSBoYW5kbGVkIGJ5IHNwZWVjaCBkaXNwYXRjaGVyLgoKCkEgVFVJIGlzIHNvbWV0aGluZyBJJ20g
bm90IGV4cGxpY2l0bHkgYWdhaW5zdCwgYnV0IGl0J3Mgbm90IHJlbGF0ZWQgdG8KbXkgbG9uZy10
ZXJtIGdvYWxzLCBzbyBJIG1vc3QgbGlrZWx5IHdvbid0IHN1cHBvcnQgaXQgbXlzZWxmLgoKQXQg
bGVhc3Qgbm90IGZvciBub3csIGFzIHRoZXJlIGFyZSBvdGhlciB0aGluZ3MgdGhhdCBuZWVkIG1v
cmUgdXJnZW50CmF0dGVudGlvbiBmcm9tIG15IHNpZGUuCgpPZiBjb3Vyc2UsIGlmIGFueW9uZSB3
YW50IHRvIGRvIGl0IHRoZW1zZWx2ZXMsIHlvdSdsbCBiZSBmcmVlIHRvLCB0aGUKcHJvamVjdHMg
d2lsbCBiZSBjb21wbGV0ZWx5IG9wZW4tc291cmNlLgoKCkFzIGZvciBteSBpbnRlbmRlZCAyMDQ4
IGRlc2lnbi4uLgoKClBlcnNvbmFsbHksIEkgcmVhbGx5IGxpa2UgdGhlIEJHIDIwNDggYXBwcm9h
Y2gsIHdoZXJlIHlvdSBjYW4gZXhwbG9yZQp0aGUgYm9hcmQgdXNpbmcgYXJyb3cga2V5cyBsaWtl
IG9uIGEgdmlydHVhbCBjaGVzc2JvYXJkIGFuZCB5b3UgY2FuIG1ha2UKYSBtb3ZlIGJ5IHByZXNz
aW5nIFNoaWZ0K0Fycm93IGtleS4KClNoaWZ0K0Fycm93IGtleXMgYXJlIHF1aXRlIGhhbmR5IGlu
IGdlbmVyYWwsIExXb3JrcyBtYWRlIGEgZ3JlYXQgdXNlIG9mCnRoZW0gaW4gdGhlaXIgU2xpZGUg
Z2FtZSwgYW5kIEkgaGFkIGEgc3VjY2VzcyB3aXRoIHRoZW0gYXMgd2VsbCBpbiBteQp1bnJlbGVh
c2VkIEF1ZGlvQXJpbWFhIGZvciBXaW5kb3dzLgoKClRob3VnaCwgaW1wbGVtZW50aW5nIHRoZSBs
YXlvdXRzIHN1Z2dlc3RlZCBoZXJlIHdvdWxkbid0IGJlIGEgcHJvYmxlbQplaXRoZXIsIHNvIEkg
Y2FuIGFkZCB0aGVtIGFzIHdlbGwuCgoKSW4gZmFjdCwgSSB3YW50ZWQgdG8gdHJ5IG91dCBhIG5l
dyBtb2RlIG9mIHRoaXMgZ2FtZSwgaW52aXNpYmxlIDIwNDguCgpTaW1pbGFyIHRvIGludmlzaWJs
ZSB0ZXRyaXMsIHdoZXJlIGJsb2NrcyBkaXNhcHBlYXIgcmlnaHQgYWZ0ZXIgdGhleQp0b3VjaCB0
aGUgZ3JvdW5kLCAyMDQ4IGNvdWxkIGJlIHBsYXllZCB3aXRoIGFsbCB0aWxlcyBoaWRkZW4sIGp1
c3QgdGhlCnR3byBuZXcgd291bGQgYmUgdmlzaWJsZS4KCkl0J2QgYmUgYSBncmVhdCBtZW1vcnkg
dHJhaW5pbmcsIEkgd29uZGVyIGlmIGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvIHdpbgp0aGlzIHdh
eS4KCgpJJ3ZlIGNoZWNrZWQgb3V0IE1hc3Rlcm1pbmQgYW5kIGl0IGRvZXNuJ3QgbG9vayBiYWQg
ZWl0aGVyLCB2ZXJ5IHNpbWlsYXIKdG8gV29yZGxlLgoKU3BlYWtpbmcgb2Ygd2hpY2gsIEknbSBh
biBJdCdzIGZvc3MgcmVhZGVyIHRvbywgYW5kIEkndmUgc2VlbiB0aGVpcgpXb3JkbGUgYXJ0aWNs
ZS4KCkkgZXZlbiB3YW50ZWQgdG8gdHJ5IG91dCBXYXJibGUsIHRoZSBjbG9uZSB0aGV5IG1lbnRp
b25lZCBhbmQgcGVyaGFwcwpqdXN0IGltcGxlbWVudCBhY2Nlc3NpYmlsaXR5IHRoZXJlLCBpZiBp
dCB3YXNuJ3QgdXNhYmxlIG91dCBvZiB0aGUgYm94LgoKQnV0IHdoZW4gSSBzYXcgaXQgcmVxdWly
ZXMgNjAwIE1CIG9mIGRpc2sgc3BhY2UsIEkndmUgYWJhbmRvbmVkIHRoaXMKaWRlYS4gNjAwIE1C
IGlzIGFic29sdXRlbHkgcnJpZGljdWxvdXMgZm9yIGEgZ2FtZSBsaWtlIHRoaXMsIHRoYXQncwph
bG1vc3QgNiB0aW1lcyB0aGUgc2l6ZSBvZiBhIHdob2xlIFB5dGhvbiBpbnRlcnByZXRlciEKCgpJ
IGRpZG4ndCBzZWUgdGhlIGJhc2ggdmVyc2lvbiwgdGhvdWdoLiBNaWdodCBiZSB3b3J0aCB0cnlp
bmcsIHRoZQpnYW1lcGxheSBpcyBzaW1wbGUgZW5vdWdoIG5vdCB0byBhbGxvdyB0b25zIG9mIGFz
Y2lpIGdyYXBoaWNzIGFyb3VuZC4KCgpXZWxsLCBhbmQgb24gUlRLLi4uCgpJdCdzIG15IHBlcnNv
bmFsIGxpYnJhcnksIHRoYXQgSSBwb3J0IHRvIG1vc3QgbGFuZ3VhZ2VzIEkgd2FudCB0byB1c2UK
Zm9yIGludGVyYWN0aXZlIGFwcGxpY2F0aW9ucy4KCkl0IGVuY29tcGFzc2VzIHRhc2tzIHJlcXVp
cmVkIGZvciB0aGlzIHB1cnBvc2UgbGlrZSBwbGF5aW5nIHNvdW5kcywKc3BlYWtpbmcsIHJlY2Vp
dmluZyBrZXlib2FyZCBpbnB1dCBldGMuLCBhbmQgbWFrZXMgdGhlIGRldmVsb3BtZW50IG11Y2gK
ZWFzaWVyIGFuZCBiZXR0ZXIgbWFpbnRhaW5hYmxlLgoKSXQncyBub3QgaW50ZW5kZWQgZm9yIHBy
b2plY3RzIG90aGVyIHRoYW4gbWluZSwgc28gd2hpbGUgdGhlIGNvZGUgaXMKcHVibGlzaGVkIGZv
ciB0cmFuc3BhcmVuY3kgcHVycG9zZXMsIHRoZXJlIGFyZSBubyBjb21wYXRpYmlsaXR5Cmd1YXJh
bnRlZXMgbm9yIGFueXRoaW5nIGxpa2UgY29uc2lzdGVuY3kgaW4gZnVuY3Rpb25hbGl0eSBvciBw
cm92aWRlZAppbnRlcmZhY2VzLgoKClRoZSB2ZXJzaW9uIEknbSB3b3JraW5nIG9uIHJpZ2h0IG5v
dyBpcyBub3QgcHVibGljIHlldC4gT25lIGlzIGFscmVhZHkKcHVibGlzaGVkIGZvciBLb3RsaW4t
QW5kcm9pZCwgdGhvdWdoOgoKaHR0cHM6Ly9naXRodWIuY29tL1Jhc3Rpc2xhdktpc2gvUnRrS290
bGluQW5kcm9pZAoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMjUuIDIuIDIwMjIg
byAxNzo0MCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+
IFlvdSBkb24ndCBzYXkgbXVjaCBhYm91dCB0aGUgbmF0dXJlIG9mIHRoZSAiUlRLIGxpYnJhcnkg
Zm9yIExpbnV4IiBvciBwcm92aWRlIGEgbGluayBmb3IgbW9yZSBpbmZvcm1hdGlvbi4gIEkgdHJp
ZWQgbG9va2luZyBpdCB1cCwgYnV0IGZvdW5kIG9ubHkgaW5mb3JtYXRpb24gb24gdGhlc2UgbGli
cmFyaWVzOgo+Cj4gCVJUS0xJQjogQW4gT3BlbiBTb3VyY2UgUHJvZ3JhbSBQYWNrYWdlIGZvciBH
TlNTIFBvc2l0aW9uaW5nCj4gCWh0dHA6Ly93d3cucnRrbGliLmNvbS8KPgo+IAlUaGUgUmVjb25z
dHJ1Y3Rpb24gVG9vbGtpdCAoUlRLKQo+IAlodHRwczovL3d3dy5vcGVucnRrLm9yZy8KPgo+IE5l
aXRoZXIgb2YgdGhlc2Ugc2VlbXMgcGFydGljdWxhcmx5IHJlbGV2YW50IHRvIGdhbWUgcHJvZ3Jh
bW1pbmcuLi4KPgo+IC0gUmljaCBNb3Jpbgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

