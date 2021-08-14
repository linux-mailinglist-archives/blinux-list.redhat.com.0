Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B4D8F3EBEEF
	for <lists+blinux-list@lfdr.de>; Sat, 14 Aug 2021 02:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628900271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OKoSpQ90F9qPln4axQOjehQvfQfsHCfWuXFupIQ/Y30=;
	b=GAGl6Qq7VbxvUtxhOmPe90HLvqtLpGvgriZ6YOp7zvpJNutTEWqaLFrNcaOPsixT5yUAi7
	L0I2tpBZkQETzKBlsbzh0DpyYdKfhC8PxxRsExyVtFi25uwlEjKtrB8r1NdO1Mtx5oIk1G
	c3kCanAci15QdVUeFurv6bCJWaJ7f9U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-392-bOFcQTSrMKefJfKHDO1ahQ-1; Fri, 13 Aug 2021 20:17:49 -0400
X-MC-Unique: bOFcQTSrMKefJfKHDO1ahQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69CAC1007C83;
	Sat, 14 Aug 2021 00:17:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 097CD5D6D5;
	Sat, 14 Aug 2021 00:17:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8425D181A0F2;
	Sat, 14 Aug 2021 00:17:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17E0Hc5K031164 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 20:17:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1936320C3A9A; Sat, 14 Aug 2021 00:17:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1433220C3A8D
	for <blinux-list@redhat.com>; Sat, 14 Aug 2021 00:17:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C72B185A7A4
	for <blinux-list@redhat.com>; Sat, 14 Aug 2021 00:17:35 +0000 (UTC)
Received: from sonic316-12.consmr.mail.bf2.yahoo.com
	(sonic316-12.consmr.mail.bf2.yahoo.com [74.6.130.122]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-381-_FD39CGXM86rFvaQyvZgmA-1;
	Fri, 13 Aug 2021 20:17:33 -0400
X-MC-Unique: _FD39CGXM86rFvaQyvZgmA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1628900253; bh=Cp/4wTUMvJ6WR51tH/wyMAl+uPSHSus/m1oRXYd/SLd=;
	h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
	b=WEHek4o0cqA3V3Qm7K/cUaL5nRyb7bcXGhvKWfjf+Zt5MQqRv5bBCgmSINl1Jh7yRG9a5ce+yfd7qqpIMdV2Hf6Yr/gpKvHYWQYaYl4gnW69fimhtuNNtoztHVkt1811+vu0A3lD4kb1aX75PeEbz1Czqb4I/0zeOUs8ZQ+CtUjqJO3eiRjMkCTQH2Ln1m/83Zi2yzJ3pnzhu8Hx+yDLi5rYxXcV0iyVJQIcH7a7LxpmOzLteXFr/rJC3qOVHA8Bv5NHCpxjIb5xfXEeKcRtMfgkxjg94lVxbfcL/iKgxEB2DbhA9j39q7X0toYnuFWnnZVZxIU7kV1g9A9KfFgXHQ==
X-YMail-OSG: 9opo5WIVM1lt4RqoRgIxdkk2ENnjymhzSR_yNrT9eQXG8iIr1EFIf09myleDf8j
	EgATk327YB_judTQZPo1onNszhcjyh6UY8uf_3UDGQ_0vdZlyD58PmAfWh62qXgUt2nGzV6sV97v
	msnY.pQyBDrvkqpz1DsbESJMO0PCFLozcHgdvO3JwlMIom7h6kRF08dOlwjYiB12hcWjUuESzohS
	3ogpR6WJOjX1C8JOrixqxOvq50FMMBG8XOyV_s3EazmfdtrCR_NoIeowYPBvXmJWql1UesfHkvLj
	ZwqrnJqN9dhZJJcV4BkKnUKEHgXzEtZ6hPN7Z6m_MbEQFBVeEXjni2Wj242sM6ymudN5u5zFaaCA
	ow_S2aspbYm4GyEueo9dXmMUdUlGPdMblGmG27hWnVsMbzvShorXiC6yKunDHa_98ERT5G0vvjJj
	y0DOG8BFBRdWehQTHroojPpQJxVlSEpQ6ShCH2nIbU3KFz_Psq.7UGGOd6kwCX434MWZGyzvsvGK
	Q0WMeihl9s.lYG957bivO_bTSud5Pzu_A9humh78unKuPs7739kUOXBOZWguRz6Y0I05yFfPF84w
	NsEr2Fm0Q6NNQo0QVxF3AYsc_9MrNIpOs1jVldnPu8CxgoyzCGBb_cOtk6MVw6zs0iYC4ihcl31o
	RvlWGQsGKmS6NnO_v5237OeWTGQXXdvE4HTFJpG52JhLEmyX80wYH33r9.eZFV.XgeqxS3tY5N9V
	zlzF0EfigrpwTOpWEglV77p_.rdJwQfEMMr2whWseyyYq9.zPa9jXr8HO9wbxpWj.OR9FL0ccBlT
	zQy8aCkbSsie_uVp6bGRmNOvZqLtQ6EVmrI.9ZrMApmWFkGXuWZr2aKqcV6QxKSmCyayZ6pv61lY
	yUtzvcExPhcRp3ISJ25mxySIi_DN1891Jt82flugtfD6KyodHzVRO1qB9VRF5V3Hwf5Rt9P4qXkd
	VZJvLkmy84Urp4rX1fFzKtt8c1i1Myv0Yg2TO2nbFtZKS43cwJYrNDkmun7z4ZaqQXQsaPULtVD6
	PA2OGlisteivFXaZmdjZ7aIt.6nf4BhpIEmjlEkfrgfAziSOnV6FK88cQOffXZHnzihCvxhCOne3
	A7i7uekbPLtWZ6._F9U5PyGJEGk_hJiDVDeCYXVH.mp71_L2t_fgYJCbnF_.nVOKM1ncgHHK1dzm
	1wuUDHFRWrivtjDktrPA4xXrPiL3O4nMGR95Wse5juIiYka.XKzlyAZlOCQdIf1ZyT1J_xTCz0il
	JuDzYGVOul2iitoRXAUn43cRDvzaJRJUuYfE78qTOi1H8eUTHOSV2UMi5QSD.pyYmn4qJad0CYKl
	7nYnW5rvvEOQuOsg4HzGQB723Ze6dEn85XPcFkarMVNTLjpMBH0p7tAeq5rP2vZAIslJxjalgVTy
	qK872SyX4IKFE_JOVPOfsB6YdasHZ3QX5REZV8wCcPqtHoXJyqY46ybOoYTqf.GK8lKerklGCa9d
	hVMeeZFCoMe3uRSheiVSGyuyEjf0bJIQ.au_WAQEmLD1RxvdInloiABroRoSoFgeAKZcDvfz.8eg
	_rllnE..2xlBMN3wRg7PFc.X8mIN9w.FD1MF2JKSOoptAfxQO0t1xpDfM7z8XqeOrRiYc1to1Qiy
	zqh.Z3qaTRfsP9IwKgIdPkuYlfr.asKP00Hdt_.mCE_b9x2BSCHcQ3MC60OeoKRX46U6QfUIXIu9
	iEcf7s6iocpVD4Xa50l4o17DbSU1XpDq0CX.y161I5ondrT9NHEC8m2iNcAeMpJRu90lvDaqyFrR
	KgWVLiLEtOGBnUMfuTKJGLl7ykclwj7Xz.uRi7zEJebyT1hwjb8pT15_reHGsBpfMfW9fp37oEOk
	k7Hi0s_3rNP5y9e.cDcQSKhXtu.JsZGvzVuuyqeZi_qavuCirdbZ9CXBLFDE2VOdVq8kXV2HI0dw
	Cjm6mU4hYAbBxszGtzErNbkHISOtMj6lpQJrLfctOxcbeydfqbPPpE6C_WXraENDq1AKEKmuzk_d
	arLqXRwDpBiR5y7_daj_LYIIokYwTP8.iT2hmFoDD0rqQ20iG.w_GuEGAvxjkYyWOvSeakDmRJfT
	ygoUuhiYUaJDawlFOchBIU2XJM2W6idDD6sqD8jCH1O6qAuaPFzpraNJrzYgnckF0hsYUeFQQd6l
	yo9l3U5ovttm3fuzwzPvWFp06Li45LZm9C96CsyF5i529OcvK3_8_PeZEbQZEBaG67FGBY1cAXK0
	8ICl3lGg5WveEaMw1CA--
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic316.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 14 Aug 2021 00:17:33 +0000
Received: by kubenode535.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID fc6e18784db04d6299b7a696791fa590; 
	Sat, 14 Aug 2021 00:17:28 +0000 (UTC)
Date: Sat, 14 Aug 2021 02:17:12 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Word Echo in Espeakup
Message-ID: <YRcLh7tBmBrQcIWx@brainpower.wer>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YRYY9ME5KKnm2Iz+.ref@brainpower.wer>
	<YRYY9ME5KKnm2Iz+@brainpower.wer>
	<ec9849eb-5797-fa44-d57c-5e0d5537f8c8@slint.fr>
MIME-Version: 1.0
In-Reply-To: <ec9849eb-5797-fa44-d57c-5e0d5537f8c8@slint.fr>
User-Agent: Mutt/2.1.0 (2021-06-12)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17E0Hc5K031164
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
Content-Disposition: inline
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKVGhhbmtzIGZvciBhIHJlc3BvbnNlLiBMZXQgbWUgdHJ5IHRvIGNsYXJpZnkg
aW5saW5lOiAKCk9uIFNhdCwgQXVnIDE0LCAyMDIxIGF0IDAxOjQ4OjMzQU0gKzAyMDAsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj5IaSBJc2hlLAo+Cj5JZiBhIGZl
YXR1cmUgb2Ygc3BlYWt1cCBhbGxvd3MgdG8gZWNobyBhIHdvcmQgd2hlbiB0aGUgc3BhY2UgYmFy
IGlzIHByZXNzZWQKPmFmdGVyIGhhdmluZyB0eXBlZCBpdCwgSSBkb24ndCBrbm93IGl0Lgo+Cj5J
IENDIHRoZSBzcGVha3VwIG1haWxpbmcgbGlzdCBhcyBzb21lb25lIHdpdGggYSBiZXR0ZXIgYW5z
d2VyIHByb2JhYmx5IAo+cmVhZHMgaXQuCgpUaGFua3MgZm9yIHRoYXQsIEkgaGFkIGJlZW4gbG9v
a2luZyBmb3IgdGhpcyBmZWF0dXJlIGZvciBhIGxvbmcgdGltZS4gSWYgcG9zc2lsYmUsIHdoYWF0
J3MgdGhlIG1haWxpbmcgbGlzdCBhZGRyZXNzPyAKCj5JIGFtIGN1cmlvdXMgdGhvdWdoOiBJIGtu
b3cgaGF0IE9yY2EgcHJvdmlkZXMgdGhpcyBmZWF0dXJlLCBidXQgZG8geW91IAo+a25vdyBhCj5j
b25zb2xlIHNjcmVlbiByZWFkZXIgcHJvdmlkaW5nIGl0LCB0aGVuIHdoaWNoIG9uZSBpcyBpdD8K
RmVucmlyIGhhcyB0aGF0IGZlYXR1cmUuIEluIGZhY3QsIEkgZmluZCB0aGF0IHdoZW4gSSB3YW50
IHRvIHdyaXRlIGxvbmcgZG9jdW1lbnRzLCBJIGhhdmUgdG8gc3dpdGNoIG9mZiBFc3BlYWt1cCBh
bmQgdXNlIEZlbnJpci4gSW4gdGhlIGZlbnJpcidzIHNldHRpbmdzLmNvbmYsIHRoZSBvcHRpb24g
aXMgYnkgZGVmYXVsdDoKCndvcmRFY2hvPWZhbHNlCiAgQW5kIEkgY2hhbmdlZCBpdCB0byAKd29y
ZEVjaG89dHJ1ZQoKPkNoZWVycywKPkRpZGllcgo+Cj4KPkxlIDEzLzA4LzIwMjEgw6AgMDk6MDIs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj5IaSwKPj4K
Pj5JIGFtIHNjcmF0Y2hpbmcgbXkgaGVhZCBvdmVyIHRoaXMgc2VlbWluZ2x5IHNpbXBsZSB0YXNr
LCBidXQgaXMgCj4+dGhlcmUgYSBzZXR0aW5nIGZvciB3b3JkIGVjaG8gaW4gU3BlYWt1cC9Fc3Bl
YWt1cD8gSSB3YW50IHRvIHR1cm4gCj4+b2ZmIGtleV9lY2hvIHNvIHRoYXQgSSBkbyBub3QgaGVh
ciBjaGFyYWN0ZXJzIGFzIEkgdHlwZSB0aGVtLCBidXQgSSAKPj5hbSBhdCBteSB3aXRzJyBlbmQg
b24gaG93IEkgY2FuIHR1cm4gb24gd29yZCBlY2hvIHNvIHRoYXQgd2hlbiBJIAo+PnByZXNzIHRo
ZSBTcGFjZWJhciBhcyBJIHR5cGUgSSBoZWFyIHRoZSB0eXBlZCB3b3JkIGluc3RlYWQgb2Ygc3Bh
Y2UuCj4+Cj4+VElBLAo+Cj4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj5CbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPkJsaW51eC1saXN0QHJlZGhhdC5j
b20KPmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKCi0tIApJc2hlCgogICAgIOKAnFRha2UgdGhlIGZpcnN0IHN0ZXAgaW4gZmFpdGguIFlvdSBk
b27igJl0IGhhdmUgdG8gc2VlIHRoZSB3aG9sZSBzdGFpcmNhc2UsIGp1c3QgdGFrZSB0aGUgZmly
c3Qgc3RlcC7igJ0KICAgICBEci4gTWFydGluIEx1dGhlciBLaW5nIEpyLgoKCgpTZW50IGZyb20g
bXkgU2xpbnQgMTQuMi4xIGJveCB1c2luZyBNdXR0IG1haWwgY2xpZW50LgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

