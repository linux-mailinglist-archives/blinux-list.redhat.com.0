Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE8C7BA922
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 20:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696530704;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zj8U44HrjRYIQ5NglW7KKLCWmpyVcqxPuBAKDHuyRXU=;
	b=bIlSVjS1MRI+lPgtHTMZlflkULh+usqCneBhEyy/eS5zz6sgZJbyYmFiJFe038kF66LRfw
	856ms+mhbBTS2wKOmlmRkmfXNMlP0uWsN3v8qKfB+ZCaK/xgEE43Ls7c/9ZA4cZI0XNP8l
	gC+vQCFKcGIHnYRA7Mxzh/hhf8VIqNI=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-170-xUikANfCNw-DHd3l01dkow-1; Thu, 05 Oct 2023 14:31:41 -0400
X-MC-Unique: xUikANfCNw-DHd3l01dkow-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C48183800BC7;
	Thu,  5 Oct 2023 18:31:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A1A13492B05;
	Thu,  5 Oct 2023 18:31:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1873B19465B1;
	Thu,  5 Oct 2023 18:31:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1524.1696527438.2981445.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.784.1696420428.2981444.blinux-list@redhat.com>
 <mailman.1346.1696489387.2981448.blinux-list@redhat.com>
 <mailman.1572.1696525144.2981444.blinux-list@redhat.com>
 <mailman.1524.1696527438.2981445.blinux-list@redhat.com>
Date: Thu, 5 Oct 2023 14:31:09 -0400
Subject: Re: Intro.
To: blinux-list@redhat.com
Message-ID: <mailman.1580.1696530694.2981449.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm guessing bistro was autocurrupt's doing.

Anyways, Slint is a offshoot of Slackware, a distro notorious for
being difficult for new Linux users to wrangle, and because of that
Slint is a bit polarizing among Blind Linux Users. If I'm not
mistaken, the name Slint comes from Slackware Internationalization as
improving internationalization in Slackware was Slint's original
purpose, but Slint is probably better known for its accessiblity work
on this and other blind-centric Linux User mailing lists. And the
reason it's polarizing is because some say Slint inherited vanilla
Slackware's lack of newbie friendliness while others say it's
Accessibility makes it more beginner friendly to blind Linux users
than any other distro. I haven't used Slint myself, so I can't really
judge.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

