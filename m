Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1037550108F
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 16:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649947558;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SoMna1/byijN20bqlt5teaeeQzJrQq6IkPZoHlpYR70=;
	b=Im0mVsxyK+s4sYe02TqNf3a3fgcKpU+QkwvFdRFyHnEgpR07gBo6UBrn/6VZ3bWVoQEsaz
	lAa4+7BV9gFVoa0AoxMIAAQUL60hqvPlTIz7ewl8Eq95xm0p3IXv0UXND9Ni6G5Q6wfO26
	xHSooTKMtmmQjRlR+QXVn+K1P/L+fUs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-412-XHTMvlRiNVSlLZaF64t4lQ-1; Thu, 14 Apr 2022 10:45:54 -0400
X-MC-Unique: XHTMvlRiNVSlLZaF64t4lQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B95EF802809;
	Thu, 14 Apr 2022 14:45:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A8CF7145CB66;
	Thu, 14 Apr 2022 14:45:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1785A194034B;
	Thu, 14 Apr 2022 14:45:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 10:45:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
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
 <mailman.8518.1649942329.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.8518.1649942329.111202.blinux-list@redhat.com>
Message-ID: <mailman.8641.1649947551.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'd like to know why identities are not revealed, I have my guesses, 
privacy, security, avoiding harvesting by bots and being suddenly 
swarmed with spam just for posting on a list...but it'd be good to know 
the reason why from the horse's mouth, so to speak.


Well, I'm not the horse, but I remember very clearly the problem and the 
subsequent resolution that obscured the identity of the sender. I was 
one of those people back about 7 or 8 years ago as I recall who posted 
to this list and got swarmed by mostly explicit porn spam after every 
post. I was not the only one who had a problem with this. So someone did 
write the list administrator, and it eventually led to the sender's 
identity being obscured from the From: header as well as all other 
headers that may have the sender's email address. Oddly, I've never had 
this problem on any other list, but it was a huge problem on this list 
at one point, which is what led to the changes made here. I'm not sure 
what led to the spammer getting access to the email addresses, but at 
that time, removing them from the headers seemed to be the best 
resolution. Perhaps it is a good idea to revisit this now that I'm sure 
software has been updated sufficiently to resolve problems like this 
without taking such drastic measures, but I for one don't want to see 
the spam swarms come back just by posting to this list. I hope this 
clears things up just a bit.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

