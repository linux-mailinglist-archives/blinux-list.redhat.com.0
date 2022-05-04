Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5883851B008
	for <lists+blinux-list@lfdr.de>; Wed,  4 May 2022 23:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651698176;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M7SEIom8xGXGcrs37zPlA711HKzMCKQdsdRb0xSxw0s=;
	b=gb3IXWeV9lBOFlrD8zJfnxRc3OuyrHSHy7to0nYHauHBk7sy6+YQNTKxXbMBVb6mCZhuM+
	KZSh82V8HvwIgb+D5imvdSpn4HicetDBhM/uCG2r22FM+dQvv2FieZVZ9JMS/DQrHRyw4D
	s//Bsc6Ih0KXjvY6v2pYXt1YoX5ZsLw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-61-OYOR0O5cOD668gNryyey5A-1; Wed, 04 May 2022 17:02:55 -0400
X-MC-Unique: OYOR0O5cOD668gNryyey5A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5428380450B;
	Wed,  4 May 2022 21:02:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4E77AC28101;
	Wed,  4 May 2022 21:02:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8B2BC194704C;
	Wed,  4 May 2022 21:02:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 4 May 2022 11:00:13 -1000
To: blinux-list@redhat.com
Subject: Re: is there a command line tool for Slack?
References: <mailman.13274.1651683297.111204.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.13274.1651683297.111204.blinux-list@redhat.com>
Message-ID: <mailman.13144.1651698167.111210.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Karen,

There are several according to this Stackoverflow thread.

https://superuser.com/questions/747315/is-there-a-command-line-interface-for-slack

I don't use slack myself.

Joel

On Wed, May 04, 2022 at 12:46:47PM -0400, Linux for blind general discussion wrote:
> Hi folks,
> For those of you who do not now of the  service, Slack allows for
> communication, like a messaging platform.
> I am wondering if there is a tool, command line in nature, that allows for
> its use?
> best,
> Karen
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

