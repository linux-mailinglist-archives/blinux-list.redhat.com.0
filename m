Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F14E2500EC1
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 15:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649942343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i5G1GUcCCFWnaTQPt/QNQ4KHG2nUSyywQkA5QSWdHdE=;
	b=b48xgLAC4SyYwpMyPgoROHtO88WBCG+mSzYXWcVbziR8mxJZ4DSlPvfmlOkppSifQAClTj
	x0+kpsK2NxtDfhWcS/YgoNorT1HcRoNNZ03wbeQOX1yQEux6YQa5zQ8/T55erAhNp+BYEv
	quIpwMO8BpBldV1QTms9nBmrPWyDlMI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-625-YrBqJBnbPXyPiARsHwIzXQ-1; Thu, 14 Apr 2022 09:18:59 -0400
X-MC-Unique: YrBqJBnbPXyPiARsHwIzXQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8EE28803533;
	Thu, 14 Apr 2022 13:18:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A93B29D4C;
	Thu, 14 Apr 2022 13:18:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7017D194034B;
	Thu, 14 Apr 2022 13:18:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 14:18:42 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8348.1649895614.111209.blinux-list@redhat.com>
 <mailman.8418.1649896178.111202.blinux-list@redhat.com>
 <CAO2sX33Pf=GEvGggGYy25irP6hM72QvVvsk3fGtFBnc8CT09yQ@mail.gmail.com>
 <mailman.8511.1649903521.111206.blinux-list@redhat.com>
 <mailman.8597.1649918264.111201.blinux-list@redhat.com>
 <mailman.8550.1649941474.111203.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8550.1649941474.111203.blinux-list@redhat.com>
Message-ID: <mailman.8518.1649942329.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'd like to know why identities are not revealed, I have my guesses, privacy, security, avoiding harvesting by  bots and being suddenly swarmed with spam just for posting on a list...but it'd be good to know the reason why from the horse's mouth, so to speak.

That and I'd also like to fix this list. There's nothing really wrong with this list and certainly no need to go fork off a whole new list however though, not if the list maintainer can sort things out, to have a hwole new list over one issue seems, well, a little petty to me however

On Thu, Apr 14, 2022 at 04:04:25PM +0300, Linux for blind general discussion wrote:
> On Thu, Apr 14, 2022 at 08:37:19AM +0200, Linux for blind general discussion wrote:
> > I am Didier Spaier, Slint maintainer and sighted.
> 
> hello Didier.
> 
> > I am frustrated not to be able to follow this discussion as I would like, as in
> > most cases I do not know who speaks, answering to whom and to which message.
> > 
> > This is mostly due to the fact that identities of posters are not displayed in
> > this list in the "From" field.
> 
> Yes. I also see this as a problem.
> 
> > For Slint we have a dedicated mailing list hosted by freelists.org very easy to
> > use as indicated in the footer added to each message, pasted below:
> > 
> > So I suggest that we open a list on freelists.org (it is free) that would
> > supersede this one.
> 
> I'd like to try fixing this mailing list first. did someone try to write
> to the list admin?
> 
> > The lists there have a searchable archive by months, which can be sorted by
> > date, date reverse and thread and in case of threads it is indented.
> 
> just FYI this list has archive too.
> 
> -- 
> Sincerely, Alexander
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

