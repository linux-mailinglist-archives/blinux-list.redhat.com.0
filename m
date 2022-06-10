Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FD354634F
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jun 2022 12:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654856095;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Llr4mvxIPP+DFS9Acrm0PoFAs0vrDiWvV4U9TuoHTFw=;
	b=JfBH47a1taYY3Ty1kjUrQEOaZQkezZPn3+UXmtO7gyx1MdospUd3UkYLJnpZ8qmTNGepPS
	fgMNYblKltYtChZ205etDzd40HhW9jcLwRAuH9baySxF2toX0m983/LRbRDTkn4HT+2iSL
	8hTFEdOv1Py6gMe/LGjxpTazvUvjXLQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-637-nevduaIyO5qvQz8u7jgMJA-1; Fri, 10 Jun 2022 06:14:52 -0400
X-MC-Unique: nevduaIyO5qvQz8u7jgMJA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0640C802804;
	Fri, 10 Jun 2022 10:14:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 93AAD2026D64;
	Fri, 10 Jun 2022 10:14:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C254A194704C;
	Fri, 10 Jun 2022 10:14:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Re: How Can I Fix this Error?
In-Reply-To: Your message of Thu, 9 Jun 2022 10:01:04 -0700 (PDT)
 <mailman.23593.1654794071.111204.blinux-list@redhat.com>
References: <mailman.23546.1654791068.111208.blinux-list@redhat.com>
 <mailman.23252.1654793611.111210.blinux-list@redhat.com>
 <mailman.23593.1654794071.111204.blinux-list@redhat.com>
Date: Fri, 10 Jun 2022 12:08:36 +0200
Message-ID: <mailman.23838.1654856082.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As I read in the readme of rdrview, it depends on 3 packages:
libxml2, libseccomp and libcurl. Try to downgrade these and try it again.
It doesn't rellies on any python package so you don't have to worry abou
It doesn't relly on python so don't worry about.

Regards.
Artur

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

