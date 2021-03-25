Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0F859349BC9
	for <lists+blinux-list@lfdr.de>; Thu, 25 Mar 2021 22:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616708573;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7G9FKIN3VzpQADF+U0TZPWvTLwdpYTANcPCbfZZWBE0=;
	b=DTL/uCNIau4QDCKh3LI+soH76rNzz4b1AU6aGWHD4MoxLmEwpo56av1jA5I4mnZHHOX4e6
	b1skZlOC2Ix/K68Q1eC/0tGLrrJ/BS/mon54xUl7T8TD86cf3Y2VHbpX6MtCsSKzi4vbM1
	F2otGzcqRCqLVyalAoeu0I+n+5OR+3s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-_0r_nIBoPLaX0pgcvy24pg-1; Thu, 25 Mar 2021 17:42:51 -0400
X-MC-Unique: _0r_nIBoPLaX0pgcvy24pg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 097F910AF381;
	Thu, 25 Mar 2021 21:42:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43B1210023AF;
	Thu, 25 Mar 2021 21:42:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8DBD84BB7C;
	Thu, 25 Mar 2021 21:42:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12PLgXid000444 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Mar 2021 17:42:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B409CF895C; Thu, 25 Mar 2021 21:42:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEAF0F8832
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 21:42:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77320800B24
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 21:42:31 +0000 (UTC)
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-158-b_b-d-OTMdmYyMcKUutMfg-1; Thu, 25 Mar 2021 17:42:28 -0400
X-MC-Unique: b_b-d-OTMdmYyMcKUutMfg-1
X-Halon-ID: fcdc94b8-8db2-11eb-a1a9-005056917149
Authorized-sender: anders@pipkrokodil.se
Received: from smtpclient.apple (unknown [194.110.84.86])
	by mail-out-01.crystone.se (Halon) with ESMTPSA
	id fcdc94b8-8db2-11eb-a1a9-005056917149;
	Thu, 25 Mar 2021 22:42:26 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.80.0.2.43\))
Subject: Re: Slint not speaking in Vmware fusion on the Mac.
Date: Thu, 25 Mar 2021 22:42:24 +0100
References: <6AA6F9E6-D16A-4D46-8B8A-8383B3D499AD@pipkrokodil.se>
	<5f021569-c2b8-ab3a-7cb8-5d346d928b95@slint.fr>
To: blinux-list@redhat.com
In-Reply-To: <5f021569-c2b8-ab3a-7cb8-5d346d928b95@slint.fr>
Message-Id: <6C70832C-9242-4206-A790-948B98965D55@pipkrokodil.se>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12PLgXid000444
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCkkgdGhpbmsgc28gYnV0IEkgZG8gYW5vdGhlciB0cnkuClRoYW5rcyBmb3IgeW91ciBsaW5r
cyBhbmQgaGVscC4KL0EKCj4gMjUgbWFycyAyMDIxIGtsLiAyMDo1NyBza3JldiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiAKPiBm
cm9tIERpZGllciBhZ2FpbjoKPiAKPiBBcmUgeW91IHN1cmUgeW91IGFyZSB1c2luZyB0aGUgZ29v
ZCBJU08/IFRoZSBsYXN0IG9uZSBpcyBoZXJlOgo+IGh0dHA6Ly9zbGFja3dhcmUudWsvc2xpbnQv
eDg2XzY0L3NsaW50LTE0LjIuMS9pc28vCj4gCj4gTGUgMjUvMDMvMjAyMSDDoCAyMDowMSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+IEhpIQo+PiBJIGFt
IG5vdCBzdXJlIHdoYXQgaXMgZ29pbmcgb24gaGVyZS4KPj4gQnV0IEkgYW0gdHJ5aW5nIHRvIHJ1
biBzbGludCBmcm9tIGFuIGlzbyB1bmRlciBNYWMuCj4+IEkgY2Fu4oCZdCBnZXQgaXQgdG8gc3Bl
YWsgaW4gVk13YXJlIGZ1c2lvbiBmb3Igc29tZSByZWFzb24uCj4+IE5vdCBzdXJlIGlmIHRoZXJl
IGlzIHNvbWUgc2VjdXJpdHkgc2V0dGluZyBvbiB0aGUgTWFjIHRoYXQgbWlnaHQgYmxvY2sgc29t
ZXRoaW5nLgo+PiBBbnkgdGhvdWdodHMuCj4+IC9BCj4+IAo+IAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

