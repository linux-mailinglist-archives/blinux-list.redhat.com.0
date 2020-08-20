Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id EEC7024C645
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 21:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597951754;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/CA3KbRKHPugCAWb0cS7N84ZsMpXDs8JG7n/Yh31xXU=;
	b=ScbG29hgW06vMF5YHenS2lvNO/HNn3XZl+sf1+D4FaciKZR5QVlWxIZHj6EARIj7TI2gIK
	lz9n5hYpz47954HiPS8jmWvDA3+BvMurMQwLZDxIvoV4XwH9aR4sn67fWWA9jDv44DdQnR
	7PHfkViABjKZApakE3DdvGrb9KukWKI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-eKKjE77sOLGsFKDADKVG5A-1; Thu, 20 Aug 2020 15:28:54 -0400
X-MC-Unique: eKKjE77sOLGsFKDADKVG5A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C4F2801AAF;
	Thu, 20 Aug 2020 19:28:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A32F860C87;
	Thu, 20 Aug 2020 19:28:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D23D4183D020;
	Thu, 20 Aug 2020 19:28:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KJSiYV009385 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 15:28:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 39E76201E6AC; Thu, 20 Aug 2020 19:28:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3590A2017F02
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 19:28:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1600F811633
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 19:28:41 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com
	[209.85.219.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-284-9kz2SFzcO7eKf-zxsibnJg-1; Thu, 20 Aug 2020 15:28:37 -0400
X-MC-Unique: 9kz2SFzcO7eKf-zxsibnJg-1
Received: by mail-yb1-f173.google.com with SMTP id g3so1729648ybc.3
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 12:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MDsL28zwjVSnyWbqi4Ivs0gasTnr/jrlYeO4pEnZFn4=;
	b=oJSggxktb60E4X8pPN3xmozrZlc73TLWiaaxHFirobP8ujZ9FoQEQc5an5cfnu13dK
	Ch96EC+qJDCEu2uErhQUdGQrPlh+Ll3p+gbDPA3lGODjMStlcX5HnHVnG/OoWJtPRFBe
	4mGPbgIUd648t8mCcbcILEfyrkaOZ6K3+hUNB4sNVnmeVMN7nmDCNRgzc4852UEsdbvh
	mnAibQDnZq1KaxH+pKCZqmqmuF1LMsxW+TEivX3SrqWxS+4KBkElDn0fJ/gYtvuFaxa1
	hFIKKBUhDjtc8V07DRHV4Ly92lSxoynCqBrW2rYAp6ubqITcwCvj1qzKDiMiMbz96Kx0
	Lqmw==
X-Gm-Message-State: AOAM5338I2CaNJMZq6oRZ06dtvZvaCxUdBR9Y7luTuG7wqZvd68QANt0
	vp93reRL2DMoJjQXfDJUdi3q2sorZwv+88pPOJ25enBezD0=
X-Google-Smtp-Source: ABdhPJzjKBzXjdDvzNR1qbTRVA91mkxB0wHa9ZvJHlCNANVe3trustZljy0YJ9UyE/LYgrxCDjg65dwbb8D+gDNSOnA=
X-Received: by 2002:a25:d253:: with SMTP id j80mr7463712ybg.101.1597951717221; 
	Thu, 20 Aug 2020 12:28:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:41dc:0:0:0:0 with HTTP; Thu, 20 Aug 2020 12:28:36
	-0700 (PDT)
Date: Thu, 20 Aug 2020 12:28:36 -0700
Message-ID: <CAM+Q2c69f_zt7JLR32Tb9sk_cBx=vkyyB59yc=BFfBm26CpnNg@mail.gmail.com>
Subject: install Ubuntu server accessibly?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just want to install the Ubuntu server. I don't want graphics of any
sort. Anyone know how to do this accessibly? Thanks for any info. Be
well & stay safe.

-- 
Subscribe to a WordPress for Newbies Mailing List by sending a message to:
wp4newbs-request@freelists.org with 'subscribe' in the Subject field OR by
visiting the list page at http://www.freelists.org/list/wp4newbs
& check out my sites at www.brightstarsweb.com & www.mysitesbeenhacked.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

