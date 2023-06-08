Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 38264727EF3
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jun 2023 13:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686224370;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=SacS5+icLfVlCLRBv/XmsKH6I/cwmrvm9gd+LeU4BTs=;
	b=K7exrP0aEAfazBXXFRTljGBQWJz838q7ROuXsOucLoXslSqWDFrHXvDUIT0dhkgsC2CvjT
	bXZTGgOTFnug6d4XUaJVHJ8bw7W5w/ezn2etgqTZbBhKFGaGFxTt0Td63ne5/u9h7V108K
	1ej6Q5eyaytr6YWgGj3ExEMi/8js98c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-193-4KEstMGZPgi2B8OFOjl1gQ-1; Thu, 08 Jun 2023 07:39:28 -0400
X-MC-Unique: 4KEstMGZPgi2B8OFOjl1gQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 21954101A531;
	Thu,  8 Jun 2023 11:39:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1C9162026D49;
	Thu,  8 Jun 2023 11:39:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A226C19451C3;
	Thu,  8 Jun 2023 11:39:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: RE: raising the volume
In-Reply-To: Your message of Thu, 8 Jun 2023 06:28:26 -0500
 <mailman.1812.1686223711.910456.blinux-list@redhat.com>
References: <mailman.965.1686145289.910460.blinux-list@redhat.com>
 <mailman.1737.1686223393.910457.blinux-list@redhat.com>
 <mailman.1812.1686223711.910456.blinux-list@redhat.com>
Date: Thu, 08 Jun 2023 13:38:22 +0200
Message-ID: <mailman.1649.1686224365.910455.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============5376083190495441703=="

--===============5376083190495441703==
Content-Type: text/plain; charset="US-ASCII"; x-default=true

I am addressing the man or woman who has problem with sound volume.

Sorry I don't know how to cite a previous mail in the mailutils mail
program.

--
Artur Rutkowski

Robi kilka rzeczy, które mogą ciebie zainteresować:
- Oprogramowanie, którego nie chce sprzedać, bo ma nadzieję, że go nie będziesz potrzebować:
  https://gitlab.com/l0cust/workwatch
- Amatorskie słuchowiska, które znajdziesz na https://probka.eu
- Podcast samouczek, mówiący o uczeniu się samodzielnie (należy do To Be Happy C.I.C.):
  https://uniwersytet.net/podcast


--===============5376083190495441703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============5376083190495441703==--

