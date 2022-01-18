Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 599E0492E61
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 20:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642533679;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=D+jKAIkb9Cv9mtRv9m78QC+7v1awr3t0rp1gW2WuDbQ=;
	b=BNyLr0pOKWWEm18Bzy0mnMJv0IQkZ6hbJbsUrq3qkadCcb0WhD+vkmVEySKKNx19nTZ7uJ
	pId7JQdYUNO9MMlDxFJryr6jYbx37uYk/JSF3GYftjbQP8M1Z34ng9BVFkII7Cyxqr6Rpl
	/g6b0Rjz1advujZOzm3pEm0pXSS0fjg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-577-tSb3ShcbO-W99BZaEdSBqg-1; Tue, 18 Jan 2022 14:21:15 -0500
X-MC-Unique: tSb3ShcbO-W99BZaEdSBqg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8571D83DD21;
	Tue, 18 Jan 2022 19:21:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 975CB5F707;
	Tue, 18 Jan 2022 19:21:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 97D8C1809C87;
	Tue, 18 Jan 2022 19:21:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20IJL2nH020012 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 14:21:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A34744047281; Tue, 18 Jan 2022 19:21:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F6664047272
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 19:21:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80DE7185A79C
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 19:21:02 +0000 (UTC)
Received: from smtp.outgoing.loopia.se (smtp.outgoing.loopia.se
	[93.188.3.37]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-370-JlHZDxw8MaiKmmzH46avTg-1; Tue, 18 Jan 2022 14:20:59 -0500
X-MC-Unique: JlHZDxw8MaiKmmzH46avTg-1
Received: from s807.loopia.se (localhost [127.0.0.1])
	by s807.loopia.se (Postfix) with ESMTP id 7A0442F12D88
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 20:20:57 +0100 (CET)
Received: from s630.loopia.se (unknown [172.22.191.6])
	by s807.loopia.se (Postfix) with ESMTP id 6B8C62E2BD62
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 20:20:57 +0100 (CET)
Received: from s473.loopia.se (unknown [172.22.191.6])
	by s630.loopia.se (Postfix) with ESMTP id 5B02713ACDFC
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 20:20:57 +0100 (CET)
X-Virus-Scanned: amavisd-new at amavis.loopia.se
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
	tests=[ALL_TRUSTED=-1] autolearn=disabled
Received: from s934.loopia.se ([172.22.191.6])
	by s473.loopia.se (s473.loopia.se [172.22.190.13]) (amavisd-new,
	port 10024) with LMTP id ACzJar5AF8N9 for <blinux-list@redhat.com>;
	Tue, 18 Jan 2022 20:20:57 +0100 (CET)
X-Loopia-Auth: user
X-Loopia-User: anders@pipkrokodil.se
X-Loopia-Originating-IP: 146.70.21.45
Received: from smtpclient.apple (unknown [146.70.21.45])
	(Authenticated sender: anders@pipkrokodil.se)
	by s934.loopia.se (Postfix) with ESMTPSA id 0253D7E14A1
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 20:20:56 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: starting out with linux
Date: Tue, 18 Jan 2022 20:20:56 +0100
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
Message-Id: <1F2202D9-3ADC-482E-AFE5-E50A3E000873@pipkrokodil.se>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20IJL2nH020012
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCkkgY2Fu4oCZdCBjaGFuZ2UgdGhlIGtleWJvYXJkIGxheW91dCBvbiB1YnVudHUgZ25vbWUg
ZGVza3RvcCB0byBTd2VkaXNoLgpPbmx5IEVuZ2xpc2ggaW4gZGlmZmVyZW50IHdheXMuCkZvciBl
eGFtcGxlIEF1c3RyYWxpYW4sIHVzLCBCcml0aXNoIGV0Yy4KL0EKCj4gMTggamFuLiAyMDIyIGts
LiAxNTo0OSBza3JldiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPjoKPiAKPiBJbiBteSBleHBlcmllbmNlLCAvZXRjL3Zjb25zb2xlLmNv
bmYgb25seSBzZXRzIHRoZSB0ZXh0IG1vZGUga2V5Ym9hcmQuIE15IGRlc2t0b3Aga2V5Ym9hcmQg
d2FzICBzb21laG93IHVuYWZmZWN0ZWQgYnkgdGhlIGNvbnRlbnRzIG9mIHRoYXQgZmlsZSwgYW5k
IEkgc3RpbGwgaGFkIHRvIGNoYW5nZSBsYXlvdXRzIHVzaW5nIHRoZSBkZXNrdG9wIGl0c2VsZi4g
VGhpcyB3YXMgYSBjb3VwbGUgb2YgeWVhcnMgYWdvIHdoZW4gSSB3YXMgcGxheWluZyBhcm91bmQg
d2l0aCB0aGUgQ29sZW1hayBsYXlvdXQsIHNvIHRoaW5ncyBtYXkgYmUgZGlmZmVyZW50IG5vdy4K
PiAKPiB+S3lsZQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

