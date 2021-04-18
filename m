Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C3A3636378E
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 22:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618777832;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vecS9bo1ec15GU+9YD2GVDWRPkjV3lQGGWUrUCofkjA=;
	b=cduFGg1ugIiSJBKQressVmjLWGN5q8yqB76itOyUCBef1kG5nauWMAcmaFALVOTcAl16zP
	3vudxu0jzOkOL24yrls6DqLSzn0qKJS1a9SQW4D+B4YCk4E+S/Nuwp4XXGA7kUGOU8Cw3p
	eojodk0GKE1hSM//O34NsApiOPEJc94=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233--UZkEA-COtGa0yTamgCWVg-1; Sun, 18 Apr 2021 16:30:30 -0400
X-MC-Unique: -UZkEA-COtGa0yTamgCWVg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F12C48189C7;
	Sun, 18 Apr 2021 20:30:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A93FC100239A;
	Sun, 18 Apr 2021 20:30:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA2D244A5E;
	Sun, 18 Apr 2021 20:30:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13IKUFKa029260 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Apr 2021 16:30:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C41272063544; Sun, 18 Apr 2021 20:30:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEBC62063552
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 20:30:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E05F811E93
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 20:30:13 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-287-K4T5CP8nO-STKCXKPubKLQ-1; Sun, 18 Apr 2021 16:30:10 -0400
X-MC-Unique: K4T5CP8nO-STKCXKPubKLQ-1
Received: by mail-lf1-f53.google.com with SMTP id f17so45722763lfu.7
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 13:30:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oXYHq4ajKwTNgSNY7d4PjQ3j5/aZwNOwNSlu+dclfpU=;
	b=LimsLjQ0uArFz59bNhJdaO33gLUXIleE1Z9bQdx/uyGtjcHy31KbJ3hFFoPZE1QGO0
	WHCW5K3CIMz1Zu9yIA2foI3a6Q7hybiQtUaOewIR21prWoTtHASmAZUMotPGd6N34rqd
	E7UAypqJPpIWjeRKvaWPZgXK71IRAzc7C+eW9OdYeqHwkNaNvD6V0Ex44HoKSAkKzoU2
	rJonZXdTuH1p5ikcFMDiWrmDln5HD26l2LyusHRf/2eLtNE+gPSFiL/eVvQI9dmwwdhW
	zU+SYf8nuecsPkHGI/n65R2fNRA1VZaOGDerGVPwgi0hmW9wOMLHoto2mdpRjIUSFQL8
	JLAA==
X-Gm-Message-State: AOAM530XcaVN97fx/agoje+ysWA4o7KBTuJfEm/qHdWaeF0//ESh4DfO
	Mt2197070VU4mPhvZ6lOMm7fz93kaDSefRBl4P0LBE1X+CMfKQ==
X-Google-Smtp-Source: ABdhPJwi26UdZ6iG+RjAqVOFVQreYCL75r4UWWOGCeu/wsfulFY/RUyEvbCTKH0JzbyzaFU1grUS9zqGlgAh5rpHIRw=
X-Received: by 2002:a05:6512:304e:: with SMTP id
	b14mr9960633lfb.274.1618777808970; 
	Sun, 18 Apr 2021 13:30:08 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 18 Apr 2021 13:29:32 -0700
Message-ID: <CANDkuAUu8RPcVyz9m=L=SeGCPcgaJmKycSzzvBnfZEv0hjKsJg@mail.gmail.com>
Subject: OpenCV for blind people
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

cool use of OpenCV for blind people:

https://www.zerohedge.com/technology/ai-powered-backpack-blind-people-replace-guide-dogs
They link to https://www.forbes.com/sites/gusalexiou/2021/03/24/cutting-edge-intel-ai-powered-backpack-could-replace-a-guide-dog-for-blind-people/

found on the National Federation of the Blind mailing list
http://nfbnet.org/pipermail/nfbc-sfv_nfbnet.org/2021-April/thread.html

Nice site for blind users who use Apple products: https://www.applevis.com/

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

