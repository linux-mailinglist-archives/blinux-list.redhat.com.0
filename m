Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id A2E4D207BBA
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 20:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593024371;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ArbShCZY65N2UvfeNPOd6TS9yTJoAc7jM/E2rRZlTFI=;
	b=dVVUdOqUfk4Wg7YARHs0eHxiJIzq0gWAXENYyjSAUQ3PHdlc8WIJY2xeAiMmir0BEy9cEi
	lOZ3yaYmHxap6B+AXGTX9MSlTXGx4A756b3IcjY3hRt4dLooAx3hqzcOkkg4izDTTQCa9C
	mgvkDOdwAkbLMVXWwJ3OcdCSc7q/K9c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-BaHPiXsZPgy6v7IxeTI6PA-1; Wed, 24 Jun 2020 14:46:09 -0400
X-MC-Unique: BaHPiXsZPgy6v7IxeTI6PA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88CD587950B;
	Wed, 24 Jun 2020 18:46:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D346760F8A;
	Wed, 24 Jun 2020 18:46:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1799F833D3;
	Wed, 24 Jun 2020 18:46:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OIju2s018787 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 14:45:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CCA0B10CB294; Wed, 24 Jun 2020 18:45:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C843310CB293
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:45:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB40A8007C8
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:45:54 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-64-sWU9hJ6tPDqMyT5rdhO05Q-1; Wed, 24 Jun 2020 14:45:51 -0400
X-MC-Unique: sWU9hJ6tPDqMyT5rdhO05Q-1
Received: by mail-pj1-f49.google.com with SMTP id i4so1528255pjd.0
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 11:45:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:in-reply-to
	:message-id:references:user-agent:mime-version;
	bh=zRQ6pYHd+NHqxN3eL0LLVZuPmZL9Y5q1fT1vwLQsm1o=;
	b=TkyXzV248E78aAUbd/m772CkDCC2kd6b/wJDjUGS8xMPlPWhpl+a0qRdY+ToFrKkM9
	6+cfd/ElSXIC6ARamEGFnnbTfl2//UpyPBNidlO+dObEVSWxNs22UtCkBmIuh6E05/hw
	/8k9qdHriIDL7Bjd2lVRNxp2HdPgBlWsZLfRwvxy8LnJsrs8jNUdOPeBdyLtWvigKpp1
	EJFSb5y77gn+yee71+JpigS3Q3cjjcVWVD53gmb/QkXaqN+bUhmcB2D6AQOu5AgxTuet
	e/QkOo+rg6Bj+hGRJl2aUKqlX5T2knznSE6xpXwmp+5rzC1Y8OhrAx8CqGqIet9S841c
	eI0g==
X-Gm-Message-State: AOAM530t9/hB05suILiaJkaTeGKtCpq7mBYaJLBCyuQ8QOUPLdEJq7JN
	xkkO58szxTTDXaX4Km/sQI85VBFW
X-Google-Smtp-Source: ABdhPJwDmI+EyVQ1rXQooDbMOx/0oDCErHhkxO1XRlMtLTMW1iPcLWyejkSkSvji+D5z5HzyxhjWig==
X-Received: by 2002:a17:902:74c6:: with SMTP id
	f6mr29899133plt.121.1593024350600; 
	Wed, 24 Jun 2020 11:45:50 -0700 (PDT)
Received: from tom-M2800 (207-118-107-193.dyn.centurytel.net.
	[207.118.107.193]) by smtp.gmail.com with ESMTPSA id
	s10sm1355402pjl.41.2020.06.24.11.45.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 24 Jun 2020 11:45:49 -0700 (PDT)
Date: Wed, 24 Jun 2020 11:45:48 -0700 (PDT)
X-X-Sender: tom@tom-M2800
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: anonymity, threads, signatures, and confusion
In-Reply-To: <Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
Message-ID: <alpine.DEB.2.21.2006241143190.31458@tom-M2800>
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
	<435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
	<Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

On Wed, 24 Jun 2020, Linux for blind general discussion wrote:

>
>
>
> On Wed, 24 Jun 2020, Linux for blind general discussion wrote:
>> Yes, I'm aware of that unfortunate history.  However, there's no reason to 
>> make the list less useful, just to protect email addresses.
> I suppose you are the list owner making this unilateral decision for 
> everyone?
> If not, more useful out weighing email address protection, for whom exactly?
> I am unsure what  allows you  to make these decisions, define these issues 
> for others, when the current decision was discussed and  the choice made.
> Nothing presently prevents individuals from placing  anything they wish into 
> the body of their posts.
While I agree with the deission to remove email addresses it was also 
requested at that time that people use some form of identification even if 
it is just a name or handle in the body of the email.  It does make 
folowing threads somewhat easier and I see no realistic reason not to put 
some form of signature in.

Tom
> >> 
>> Adding an identifying signature (however obscure) lets folks follow 
>> conversations more easily.  If I know that the "FredQ" who posted one 
>> message posted another one earlier, it gives me useful context.
>> 
>> - Rich Morin (rdm@cfcl.com)
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

