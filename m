Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCA4728352
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jun 2023 17:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686237096;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eiTUBSVomxIYiEArmiI/iRrcimG7S55wQ1i07GV6v1g=;
	b=hRJ3P1Nb4xygiW9maahaWBdVUHc2fl3quIV3HnD8QzCZyzpsbeI/zkXRFuVZw5leF4TCKV
	9FW3Q7Dak4Kh2xlVKIpmyGiGAvp7ZY9B5WBKBXKsdDet1EZMtueUS8OBCk48XhYgHq7cbJ
	UpR7KZTlGvdc6G3ahrlpfjQT7OkofEc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-633-NOomCfyrNY6zRA46o4C18g-1; Thu, 08 Jun 2023 11:11:32 -0400
X-MC-Unique: NOomCfyrNY6zRA46o4C18g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8AE5803DBD;
	Thu,  8 Jun 2023 15:11:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D838940D1B66;
	Thu,  8 Jun 2023 15:11:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 44F1619451C3;
	Thu,  8 Jun 2023 15:11:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: Fedora Mate and Wi-Fi
Date: Thu, 8 Jun 2023 09:45:41 -0500
References: <mailman.1470.1686180577.910454.blinux-list@redhat.com>
 <mailman.1512.1686222307.910461.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.1512.1686222307.910461.blinux-list@redhat.com>
Message-ID: <mailman.1556.1686237090.910461.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have fedora mate 35 on a thumb drive, but am not sure when I had downloaded it.
Maybe it could still be had on the fedora site.

> On Jun 8, 2023, at 06:05, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Maybe you have a missing driver. By the way, where can I get a current copy
> of Fedora 35?
> 
> -----Original Message-----
> From: Blinux-list <blinux-list-bounces@redhat.com> On Behalf Of Linux for
> blind general discussion
> Sent: Wednesday, June 7, 2023 6:28 PM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Fedora Mate and wifi
> 
> I have just put Fedora 35 on a machine which had had windows 10.
> I cannot remember how to get wifi network names to be seen.
> The items on the top pannel I find are:
> sound, blue tooth, dragora, a menu for editing connections, but nothing
> offering to show what wifi networks are available.
> Last night I found the list with another machine on which I had put the same
> operating system.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

