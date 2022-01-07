Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FCA4872F9
	for <lists+blinux-list@lfdr.de>; Fri,  7 Jan 2022 07:17:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641536238;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ll7gUAg2Khd3GsnKMPF5Ty/iZyibcjpD6T6izNPLFEI=;
	b=Kc+oCugPUsbwO4tRNnxL8rurG6VwO+fbU+OWLCJxyj3c61sBVErylLSZ0XeuayhYqCF5P6
	gw2dNf2bjIzo951uw/g5lX3UBtoqv6A3kavc8pNuiK9C8zHevIqH+nAjIZCQXS4ApHN4MO
	35POO8BhTb+5oAKHWfhlbXX8XMBvcZQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-315-CgNpei2YO36xEyz0pyd2mw-1; Fri, 07 Jan 2022 01:17:14 -0500
X-MC-Unique: CgNpei2YO36xEyz0pyd2mw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92BC31083F61;
	Fri,  7 Jan 2022 06:17:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D5109794AE;
	Fri,  7 Jan 2022 06:17:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B13C04BB7B;
	Fri,  7 Jan 2022 06:17:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2076Gri0026267 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 Jan 2022 01:16:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6D144492D4E; Fri,  7 Jan 2022 06:16:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6927C492D4B
	for <blinux-list@redhat.com>; Fri,  7 Jan 2022 06:16:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52F2480029D
	for <blinux-list@redhat.com>; Fri,  7 Jan 2022 06:16:53 +0000 (UTC)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr
	[140.77.166.138]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-661-pJoZaz_uPeCOFMMAoOZZZA-1; Fri, 07 Jan 2022 01:16:51 -0500
X-MC-Unique: pJoZaz_uPeCOFMMAoOZZZA-1
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 0AF6A2017B;
	Fri,  7 Jan 2022 07:07:31 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id joQBh_KoU-BV; Fri,  7 Jan 2022 07:07:30 +0100 (CET)
Received: from om.localdomain (reverse-177-225.fdn.fr [80.67.177.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits)
	server-digest SHA256) (No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id E07A120177;
	Fri,  7 Jan 2022 07:07:30 +0100 (CET)
Received: from seb by om.localdomain with local (Exim 4.94)
	(envelope-from <Sebastien.Hinderer@ens-lyon.org>)
	id 1n5iPS-0004QR-9i; Fri, 07 Jan 2022 07:07:30 +0100
Date: Fri, 7 Jan 2022 07:07:30 +0100
To: orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>,
	debian-accessibility@lists.debian.org
Subject: Re: [orca-list] Jos Lemmens passed away on November 9, 2021
Message-ID: <YdfYoo96ODXQK/PP@om.localdomain>
Mail-Followup-To: orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>,
	debian-accessibility@lists.debian.org
References: <bafa422c-eba4-223a-0d2f-f632f5bd6445@slint.fr>
MIME-Version: 1.0
In-Reply-To: <bafa422c-eba4-223a-0d2f-f632f5bd6445@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 2076Gri0026267
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
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGEgbG90IERpZGllciBmb3IgaGF2aW5nIHNoYXJlZCB0aGUgdmVyeSBzZWQgbmV3cy4K
CkkgZmVlbCB0aGF0IG91ciBjb21tdW5pdHkgb2YgcGVyc29ucyBpbnZvbHZlZCBpbiBhY2Nlc3Np
YmlsaXR5IGZvciBmcmVlCnNvZnR3YXJlIGlzIHNvIHNtYWxsIHRoYXQgZXZlcnkgbWVtYmVyIG9m
IHRoaXMgY29tbXVuaXR5IGlzIG9mIGNydWNpYWwKaW1wb3J0YW50LCBhbmQgdGhhdCBldmVyeSBs
b3NzIGlzIHRodXMgc2FkLCBwYWluZnVsIGFuZCBkaWZmaWN1bHQgdG8KYWNjZXB0LCBhIGJpdCBs
aWtlIGluIGEgaGFybW9uaW91cyBmYW1pbHkuIFRvIG1lLCB0aGF0IHNlZW1zIGV2ZW4gbW9yZQp0
cnVlIGZvciB0aGUgbW9zdCBpbnZvbHZlZCBvZiB1cywgdG8gd2hpY2ggSm9zIG9idmlvdXNseSBi
ZWxvbmdzLgoKU8OpYmFzdGllbi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

