Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 955BA4FC863
	for <lists+blinux-list@lfdr.de>; Tue, 12 Apr 2022 01:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649720392;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5BROas9xu0xfrKZD/8r2EP3ZHSEme0URGQlEZhuofVg=;
	b=YFIvRTOLj3tOUcmvUDrlRsmkHo8nC5X/FuQu0qmL0/JFisYyKs3zCb68cKQ+b8Pfw8+S8g
	ctTS/RZvBigL5AHLXpPrW5Tcv4SASMrU0hx0XJlT23Nb/oWj2PorBiyzCCK16rH8heWpTk
	X4BZxlz2NTth/qla9ar/slldSVs70rU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-58-94SgLepbM3eLm0lT2YAJWw-1; Mon, 11 Apr 2022 19:39:49 -0400
X-MC-Unique: 94SgLepbM3eLm0lT2YAJWw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB7BE29AA2EE;
	Mon, 11 Apr 2022 23:39:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D4BDE40EC004;
	Mon, 11 Apr 2022 23:39:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6101F1940369;
	Mon, 11 Apr 2022 23:39:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 12 Apr 2022 00:39:36 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Dragonfm history vs show hidden
References: <mailman.7960.1649702888.111201.blinux-list@redhat.com>
 <mailman.7756.1649704345.111203.blinux-list@redhat.com>
 <mailman.7889.1649704507.111206.blinux-list@redhat.com>
 <mailman.7805.1649715330.111209.blinux-list@redhat.com>
 <mailman.7833.1649716404.111204.blinux-list@redhat.com>
 <mailman.7787.1649716940.111203.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7787.1649716940.111203.blinux-list@redhat.com>
Message-ID: <mailman.7788.1649720383.111203.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Got that to work. I feel like it fits into a system nicely and does...about 80-90% of what Caja/Nautilus/PCmanfm does which suits me just fine.

So unless something breaks I got no more feature requests at all

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

