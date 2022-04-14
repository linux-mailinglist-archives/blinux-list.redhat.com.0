Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BB5501C5C
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 22:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649966923;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/nqunS7PVh36RvlOq1dLe2PfdrIi4nFe1NiSqOIednw=;
	b=BmjPu1ZXnv+iQhlAhivexoZw3gwZ19s5qjQxngYkThw2DIilwJEhraxu+Ca/mWQrl3jSj9
	tT5mI3A/A2UMuoW6ZYBIk2iTcds5iIPAlUL3kehYCtZj4Q9sqi43Nl2eFaYdxjiva8ASJP
	BCY5f99YjSEPABFp6Hynrgp6lJzy04g=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-569--6sshssxPo6aSqg2ASUNGg-1; Thu, 14 Apr 2022 16:08:39 -0400
X-MC-Unique: -6sshssxPo6aSqg2ASUNGg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 652BC3811F23;
	Thu, 14 Apr 2022 20:08:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EF959111D3C8;
	Thu, 14 Apr 2022 20:08:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9EC03194034F;
	Thu, 14 Apr 2022 20:08:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 16:08:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8444.1649918366.111208.blinux-list@redhat.com>
 <mailman.8643.1649948214.111206.blinux-list@redhat.com>
 <mailman.8358.1649952886.111205.blinux-list@redhat.com>
 <mailman.8367.1649955905.111205.blinux-list@redhat.com>
 <mailman.8521.1649966212.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.8521.1649966212.111207.blinux-list@redhat.com>
Message-ID: <mailman.8562.1649966917.111208.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Also Windows just works. Nothing just crashes out of nowhere,


When did that start happening? I always found just sitting down at a 
Microsoft computer to be a wrestling match. Random crashes usually at 
just the wrong time, many hoops to jump through just to do things I took 
for granted even in the days of good old-fashion DOS, just plugging in a 
printer or other simple device was enough to send my computer into a 
tailspin, and then there is all the antivirus and antispyware stuff I 
had to run that slowed down the computer almost as much as just the 
screen reader could do. Even the very first time I used a Linux 
computer, back before the days of graphical desktops with a11y that 
worked, I went from cursing my computer 3 or more times a day to cursing 
it maybe twice a month, and that was usually because I was intentionally 
breaking something so that I could learn how to fix it. That was before 
I tried to wrestle with EMACSpeak and Mutt LOL. I cursed EMACSpeak for 
like 5 to 10 minutes before I just gave up, and actually wrestled with 
Mutt for about a week before running back to Pine back in those days. 
Things have greatly improved since then.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

