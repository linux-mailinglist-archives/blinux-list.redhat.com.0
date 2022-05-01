Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 303575164D6
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 16:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651417134;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VBZd8S6+W8Pm9Y+R8DL/tBZPm1iNQ6LmPUtPD1YJ1pc=;
	b=blN6Jketccc0k1hjsXRiJcFs6mkuV2j8EgNPihrcyWkKi+tx5mT/xwF0VeYaqWOv+6mhhx
	vMkk5hnddG6mvt9trLDMBg8yQcysn4JZGEZLKRdJGb1vMOhC/PHgyU54f02e9e/VVX/ENp
	YH12c+3KEWL7N4UK4QBqtrsZNrPEkfs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-mS5mAvdDPuOM2HGvCPEtCQ-1; Sun, 01 May 2022 10:58:51 -0400
X-MC-Unique: mS5mAvdDPuOM2HGvCPEtCQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC5B8811E76;
	Sun,  1 May 2022 14:58:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B5E80C52C85;
	Sun,  1 May 2022 14:58:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B207E1947063;
	Sun,  1 May 2022 14:58:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: FYI - Command Line Programs for the Blind
Date: Sun, 1 May 2022 11:58:30 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
Message-ID: <mailman.12460.1651417118.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all, I use to leave mailing lists at vacation mode and visit their 
archives once a month, so I'm late to this subject.

Specifically, I just wanted to comment about a viable full featured 
command line web browser, including all of bells and whistles like 
Javascript, possibly web apps, convenient keystrokes, not depending on a 
desktop environment being set up, etc.

As far as I recall, some blind Linux users including me have been 
wanting such a browser for more than ten years, yet such software has 
never been developed, which in turn demonstrates one thing I've read in 
an article last year: that web browsers are arguably the most complex 
type of software in the world. Not by chance, there are so few actively 
developed engines, despite all being open source.

In any case, I would support a command line web browser by donations, 
albeit I could probably donate much. In fact, AFAIC the main problem 
wouldn't be developing the browser, but building a relatively long term 
sustainable plan to maintain it, especially considering the importance 
of browsers to the comtemporary life, which requires us to have 
confidence to trust it enough. Am I right?

Best,
Cleverson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

