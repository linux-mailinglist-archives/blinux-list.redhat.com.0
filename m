Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 657E246ED26
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 17:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639067717;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HrGZqvBsbVh7vnP9FTFw2VEWCARRVNP1Z0/HIMRlo/g=;
	b=A2UZ8rW6jV1OYaQbUw1TQo7uUBO9SX0to7eDbvfIFqGozPQVaLWuRraISnwcYVTWSgJOna
	whBNW8/n6u6Hf39kF2ADsU81+D7t8bmOgwKEKpNCm78VELtvB1Vfb+VUVteveMSMDGiCOm
	kaoBcuctRhG5dh0EKkUpTm2pqj6Nc6o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-249-o7O5g3ciN5a1mQrPAMh1hg-1; Thu, 09 Dec 2021 11:35:09 -0500
X-MC-Unique: o7O5g3ciN5a1mQrPAMh1hg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1FD5101521F;
	Thu,  9 Dec 2021 16:34:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 353DB17CD9;
	Thu,  9 Dec 2021 16:34:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F8711809CB8;
	Thu,  9 Dec 2021 16:34:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B9GUpc3016366 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 11:30:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A8EC1400E127; Thu,  9 Dec 2021 16:30:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A569B400F3F2
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:30:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FC0F185A7B4
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:30:51 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-383-FihB5vB5PNaDH40lKrrRtQ-1; Thu, 09 Dec 2021 11:30:47 -0500
X-MC-Unique: FihB5vB5PNaDH40lKrrRtQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J8zzq449Hz412N
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 11:30:47 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J8zzq3r3Dzcbc; Thu,  9 Dec 2021 11:30:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J8zzq3VKPzcbC
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 11:30:47 -0500 (EST)
Date: Thu, 9 Dec 2021 11:30:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: .sh files not opening in terminal
In-Reply-To: <f342b0c4-5ca4-0f8d-3e04-60c3631c8976@icloud.com>
Message-ID: <alpine.NEB.2.23.451.2112091128550.3697@panix1.panix.com>
References: <f342b0c4-5ca4-0f8d-3e04-60c3631c8976@icloud.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B9GUpc3016366
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29tZXRpbWVzIGV4ZWN1dGUgcGVybWlzc2lvbnMgbmVlZCBlbmFibGluZyBvbiB0aG9zZSBmaWxl
cy4gIGNobW9kICt4CmZpbGUuc2ggc2hvdWxkIGRvIGl0IGFzc3VtaW5nIG9mIGNvdXJzZSB0aGF0
IHlvdXIgYWNjb3VudCBhbHJlYWR5IG93bnMKdGhhdCBmaWxlLnNoLiAgSWYgdGhhdCdzIG5vdCB0
aGUgY2FzZSBnbyB0byByb290IHRoZW4gY2hvd24gdXNlcgovaG9tZS91c2VyL2ZpbGUuc2guCgoK
T24gVGh1LCA5IERlYyAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgoKPiDCoMKgwqAgwqDCoMKgIMKgwqDCoCBIaSwKPgo+IFdoYXQgY2FuIEkgZG8gdG8gcnVu
IC5zaCBmaWxlcz8KPgo+IFRoZXkgYXJlIG9wZW5pbmcgd2l0aCB0ZXh0IGVkaXRvciBpbnN0ZWFk
IG9mIHRlcm1pbmFsLgo+Cj4KPiB0aGFua3MsCj4KPiBSb2IKPgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

