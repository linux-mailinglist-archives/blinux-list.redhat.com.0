Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EAED85466D4
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jun 2022 14:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654865400;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UxvisE7gvmXPOZCS0sHm6ilVwyLCR+Pi92foqctrY0o=;
	b=SUEHHiRQOUGoeJEeH6YQ7v4kS6jJW4SkEhfnYPyQRG2ZeotFZcN+HaHWWeE0DAPgYvn9aZ
	8Ap7jOAXK/H0nlMaEoh3pesDJAVpT9GEjgOgukcK3I2bW647cA3+8SoM37BbZe8KbCnmKM
	PDB5NsY6qIH+mJcoudHaEWff9nbw7jA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-292-4-2IXaydOVadXMj3ALEDkQ-1; Fri, 10 Jun 2022 08:49:57 -0400
X-MC-Unique: 4-2IXaydOVadXMj3ALEDkQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0E6F185A7A4;
	Fri, 10 Jun 2022 12:49:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6D3711121314;
	Fri, 10 Jun 2022 12:49:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B7CE9194704E;
	Fri, 10 Jun 2022 12:49:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Fri, 10 Jun 2022 05:49:40 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How Can I Fix this Error?
In-Reply-To: <mailman.23838.1654856082.111201.blinux-list@redhat.com>
References: <mailman.23546.1654791068.111208.blinux-list@redhat.com>
 <mailman.23252.1654793611.111210.blinux-list@redhat.com>
 <mailman.23593.1654794071.111204.blinux-list@redhat.com>
 <mailman.23838.1654856082.111201.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.23115.1654865388.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you Arter. In looking over a man-page for apt, I don't see a downgrade 
option In 2 of those 3 packages you mentioned, it couldn't find them, but in 1 
case I ran aptitude instead-and-I had additional options of packages. Thanks 
again.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

