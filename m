Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7048F1CDCCD
	for <lists+blinux-list@lfdr.de>; Mon, 11 May 2020 16:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589206442;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=43QRIHFXrxKnfWdxreNwXOZlGxd1dEtThD+3LOye+Ww=;
	b=CJbgTLcSuW5AJ9EVwtRI4pqboLXWeeCf1GrDZ7SDWrAzQuo2I9iy095fog0fkiP+1eaJiJ
	N6WEP9bHkUscKoFGPA/DSLOyUkZIRi0+coQ/MIKcuLLD6doQ4l1LHnfusOyVF0dff14Z6z
	opjS4DdgZ7FrX7Rh6ZmGF8SoC3E773U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-DjenQ3g-Pe6x_nG1z_ne4w-1; Mon, 11 May 2020 10:14:00 -0400
X-MC-Unique: DjenQ3g-Pe6x_nG1z_ne4w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 32CD1475;
	Mon, 11 May 2020 14:13:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB3A95EDE2;
	Mon, 11 May 2020 14:13:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0747F4CAA8;
	Mon, 11 May 2020 14:13:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04BEDVsZ003887 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 11 May 2020 10:13:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 87CBC2166BA0; Mon, 11 May 2020 14:13:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 840742166B28
	for <blinux-list@redhat.com>; Mon, 11 May 2020 14:13:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81BCD811E7A
	for <blinux-list@redhat.com>; Mon, 11 May 2020 14:13:29 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-430-6NeZ2V5SN9SPbnbzjF78Gw-1; Mon, 11 May 2020 10:13:26 -0400
X-MC-Unique: 6NeZ2V5SN9SPbnbzjF78Gw-1
Received: by mail-qk1-f182.google.com with SMTP id f83so9800513qke.13
	for <blinux-list@redhat.com>; Mon, 11 May 2020 07:13:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SdaphTSRefKKpHOTqxL2WuzRyLx394IoBeC2J6BRedw=;
	b=deSHiv8gOcnJNK5s8sU+bmol0uq0SOcYFpfhIkGLm4A1Hwx5qh7FJa53Wbt84OD1vl
	rErC3HUBHnpxznhJBAw/UcYWJNHH8JAMhLwAxxIaYa3dTeL273+6Z+j1joIEqH6yHj7V
	vzqUz+tZAb0ah+qGFs9zQjilUan5Vh0un5HLtoZ8gtnmcRafLPOjz6aI7DBBMPFspMYy
	3rpLY4g+EFbe0xfzPd6tbi4JTndwkK/+xhS0o6dXBfOfm05jzF+Hctv0uA5R64i9Ojla
	3FqM2PMhz23W4HGH1hyfBc0tqS3srTqM8wfWfn0z4bLGSeDEcUwuITh+bCYYpc9r/AKn
	2CEw==
X-Gm-Message-State: AGi0PuZWQ1K8sSbz8aR3mBQbScc3m/qzZp9ZN4YiV2ml5fJ3J7k4Ut7h
	1iX2vwM8Sx6+a9XWQR231dhzbTh8ffGgPxgAxGMsJMfQ
X-Google-Smtp-Source: APiQypLpaxn+Sq6AfZXQdwDID6xXPs5LzAiI2PY+z0xjCXUXpyqarUXiV6QvfHBGyRo3rKyOQML3MJBuskmY9OPV3k4=
X-Received: by 2002:a05:620a:227:: with SMTP id
	u7mr15673834qkm.182.1589206405533; 
	Mon, 11 May 2020 07:13:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:932:0:0:0:0 with HTTP; Mon, 11 May 2020 07:13:24
	-0700 (PDT)
Date: Mon, 11 May 2020 14:13:24 +0000
Message-ID: <CAO2sX30s5_Lwt5seVdXsqY63V+NZ2t8uR2vLVWseHa441YLKWA@mail.gmail.com>
Subject: Can anyone recommend an accessible text-mode DAW?
To: Linux for blind general discussion <blinux-list@redhat.com>,
	raspberry-vi@freelists.org
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I've had a midi keyboard for a while and if all goes well,
I'll be recieving a couple of additional midi controllers
fromKickstarters in the coming months.

I'm looking for a command-line, curses, or similiar-based Digital
Audio Workstation application I can use to interface with these
devices over USB from my desktop or USB or Bluetooth from my Raspberry
Pi(I currently have a 3B, but plan to upgrade to a Pi 4 4GB as soon as
I have the money to spare).

Anyone have any suggestions?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

