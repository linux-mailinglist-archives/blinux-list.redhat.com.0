Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DE34838C2
	for <lists+blinux-list@lfdr.de>; Mon,  3 Jan 2022 23:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641248199;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2DgRTWBA5a2kuWIEuPxoJdwtHpp6ZKZ9kloz1OO05Y4=;
	b=X+bjooA7gpa2AlP0oHsO/06aQb63N+9uRMtv4LDP/nEm8Tc8MtM4nGhj/zPGesR1emC5MV
	KrgBWO3tLn0THyuHkFyryxknMdOzTCan8UcZNQKNswNGisUhFeCyVTWFqk13qU9eYMQABv
	dOk9mvheOrHBBYm87Zf8cds9hLJVbww=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-478-z4Ttj_CuNu20ZRT9W0tqVg-1; Mon, 03 Jan 2022 17:16:36 -0500
X-MC-Unique: z4Ttj_CuNu20ZRT9W0tqVg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 992CE1006AA8;
	Mon,  3 Jan 2022 22:16:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE79256F8E;
	Mon,  3 Jan 2022 22:16:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3C9D31809CB8;
	Mon,  3 Jan 2022 22:16:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 203MG7f7022243 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 3 Jan 2022 17:16:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D13D72026D69; Mon,  3 Jan 2022 22:16:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD0A02026D5D
	for <blinux-list@redhat.com>; Mon,  3 Jan 2022 22:16:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0AEE3804071
	for <blinux-list@redhat.com>; Mon,  3 Jan 2022 22:16:04 +0000 (UTC)
Received: from smtp.outgoing.loopia.se (smtp.outgoing.loopia.se
	[93.188.3.37]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-330-u1Drbu-WOnKs27RrAkWDkw-1; Mon, 03 Jan 2022 17:16:02 -0500
X-MC-Unique: u1Drbu-WOnKs27RrAkWDkw-1
Received: from s807.loopia.se (localhost [127.0.0.1])
	by s807.loopia.se (Postfix) with ESMTP id E69992F089CE
	for <Blinux-list@redhat.com>; Mon,  3 Jan 2022 23:08:59 +0100 (CET)
Received: from s630.loopia.se (unknown [172.22.191.6])
	by s807.loopia.se (Postfix) with ESMTP id D82402E29FC6
	for <Blinux-list@redhat.com>; Mon,  3 Jan 2022 23:08:59 +0100 (CET)
Received: from s470.loopia.se (unknown [172.22.191.6])
	by s630.loopia.se (Postfix) with ESMTP id CFC4513ABFFD
	for <Blinux-list@redhat.com>; Mon,  3 Jan 2022 23:08:59 +0100 (CET)
X-Virus-Scanned: amavisd-new at amavis.loopia.se
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
	tests=[ALL_TRUSTED=-1] autolearn=disabled
Received: from s645.loopia.se ([172.22.191.6])
	by s470.loopia.se (s470.loopia.se [172.22.190.10]) (amavisd-new,
	port 10024) with LMTP id 5wfLeAODdjKK for <Blinux-list@redhat.com>;
	Mon,  3 Jan 2022 23:08:59 +0100 (CET)
X-Loopia-Auth: user
X-Loopia-User: anders@pipkrokodil.se
X-Loopia-Originating-IP: 91.132.138.156
Received: from smtpclient.apple (unknown [91.132.138.156])
	(Authenticated sender: anders@pipkrokodil.se)
	by s645.loopia.se (Postfix) with ESMTPSA id 299011577889
	for <Blinux-list@redhat.com>; Mon,  3 Jan 2022 23:08:59 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Ubuntu 20.04 settings.
Message-Id: <2D360D45-88B2-4856-955A-9387ABC9085A@pipkrokodil.se>
Date: Mon, 3 Jan 2022 23:08:58 +0100
To: Linux for blind general discussion <Blinux-list@redhat.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 203MG7f7022243
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCkkgaGF2ZSBpbnN0YWxsZWQgVWJ1bnR1IDIwLjA0IG9uIGEgdmlydHVhbCBtYWNoaW5lIGlu
IFZNd2FyZSBGdXNpb24gb24gbXkgTWFjLiBFdmVyeXRoaW5nIGdvZXMgd2VsbCB1bnRpbCBJIGFt
IGxvZ2dlZCBpbi4KQnV0IEkgaGF2ZSBmb3Jnb3R0ZW4gdGhlIGtleXN0cm9rZSB0byBnbyB0byBz
ZXR0aW5ncyB3aXRoIE9yY2EuClRoZSBvbmx5IHRoaW5nIHRoYXQgY29tZXMgdXAgaXMgc29tZSBn
dWlkZSB0aGF0IHdhbnRzIG1lIHRvIHNldCB1cCBzZXZlcmFsIGFjY291bnRzLgpJIGp1c3QgZG9u
4oCZdCB3YW50IHRoYXQgYnV0IGl0IHNlZW1zIEkgY2Fu4oCZdCBnZXQgaXQgYXdheS4KQW55IGhl
bHAgSXMgYXBwcmVjaWF0ZWQuCi9BCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

