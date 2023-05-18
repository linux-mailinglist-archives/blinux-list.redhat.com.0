Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C267082EB
	for <lists+blinux-list@lfdr.de>; Thu, 18 May 2023 15:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1684417175;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HZEfT6r8QNvNh9dfOxkiaKQwgDu8YRdQ8OGiLQ7HiLg=;
	b=LgsVK9TxTnPVbush4azo7aH88w5zmklLVeoCwFfe07rbmycfFmCHJMVxu8I7+IZHy5Z8lO
	RpVTklWxZcmgTKVB75bXe3yQ6Jfv/7eOmjpW7xwVQWaNwFPxGtK1+b4fE38v2icCP+rK8O
	ONWKCLgzTsJSAIxcz68KTVUcCY7r+9c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-349--ntJMgyAPYe4CfvV3oy3eg-1; Thu, 18 May 2023 09:39:33 -0400
X-MC-Unique: -ntJMgyAPYe4CfvV3oy3eg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D907A891750;
	Thu, 18 May 2023 13:39:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1EB2F40C2063;
	Thu, 18 May 2023 13:39:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C623019465B5;
	Thu, 18 May 2023 13:39:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 18 May 2023 08:39:24 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: gentle reminder on anonymous posts
References: <mailman.1073.1684339614.1505526.blinux-list@redhat.com>
 <mailman.1486.1684416545.1505524.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1486.1684416545.1505524.blinux-list@redhat.com>
Message-ID: <mailman.1591.1684417168.1505527.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  It was done a number of years back because some spammer
managed to find the list, harvest the reply-address of every sender,
and reply to every post with nude/sexual images.  I'm not really
sure why or what they got out of it, but when the list was switched
over to anonymous authorship, the spam stopped.  There might be a
better solution now, but it's a mixed situation.  I'm thankful to
not have random inappropriate images show up in my mailbox (less
of an issue now that I use mutt rather than a graphical MUA), but
it does make it challenging to determine who sent what.

-Tim

On 2023-05-18 09:28, Linux for blind general discussion wrote:
> 
> On 17/5/23 12:06, Linux for blind general discussion wrote:
> >To be sure, it doesn't really matter (to me, at least :-) who these folks
> >are, but it would make it a lot easier to follow conversations if some
> >identification were provided.
> 
> It must be an issue with the mailing list server.
> 
> I know the messages are sent out with my full name and e-mail address in the
> "From" field.
> 
> Perhaps this is a side effect of the way in which the list is configured to
> deal with DMARC compliance. I'm on other lists for which this is not an
> issue, though. I do have a "reject" DMARC policy in my domain's DNS record,
> and SPF and DKIM are configured appropriately.
> 
> Jason.
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

