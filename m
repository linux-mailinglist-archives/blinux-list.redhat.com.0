Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB7A4FF826
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 15:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649857713;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v7yWJZTXJcFWdn4N4djUal/g70zSH002B6ocxm43R7M=;
	b=Fesv7H6JGow1zEFAmRfCq4+QQJLdy6n1DrNHpE6ZITftuv6v61iWuZ2MHa6kIyyKd0HldE
	Fz/m+Y0YH4V0L4Fxc0fQMeCbUyf0oLZzY0QlMP29KAMj/8Vk1ZYD1mfX3T1MNdSV+/f3or
	r9uD9eYlVopSlXurivX9kbgZEcstCx4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-583-EBPNkBrRNJGA9QZ3KZjhIA-1; Wed, 13 Apr 2022 09:48:30 -0400
X-MC-Unique: EBPNkBrRNJGA9QZ3KZjhIA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 723B21C0232A;
	Wed, 13 Apr 2022 13:48:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6FAD9C28109;
	Wed, 13 Apr 2022 13:48:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E1CBA1940376;
	Wed, 13 Apr 2022 13:48:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 09:47:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.8153.1649856275.111209.blinux-list@redhat.com>
Message-ID: <mailman.8268.1649857705.111206.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Again, you compare apples to oranges. Mutt requires tons of 
configuration hoops to be jumped through before it is even somewhat 
useful. This is far worse than the first-run experience in Thunderbird. 
You say you just transfer a file to get Mutt working on a new machine. 
The only difference with Thunderbird is that you have to transfer a 
folder instead of a file. So Thunderbird is still the clear winner here, 
since it takes far less time to get it set up and actually reading and 
responding to mail if you've never used it. Once configured, since I 
already turned off the calendar and such in my initial setup process, 
and since I needed to set up my email accounts anyway, I found that the 
new account screen is far easier to use than Mutt's initial 
configuration hassles, and I only press shift+tab once to get to my 
message list, which is how it will work if I transfer the ~/.thunderbird 
folder to a new machine as well, and it will then bypass the new account 
setup and just work as I expect wherever I want to use it.


I totally agree about the sensible keybindings. Thins are finally 
starting to move in that direction, and this is a good thing indeed. 
Still, there is a lot of work to be done, and most terminal applications 
will probably have to be rebuilt from the ground up, while still others 
will need to be developed in order to make the terminal a somewhat more 
hospitable place for anyone other than a power user. Yes, I do use a 
terminal for some things that I just find a bit easier that way, but for 
a long time now, even though most tutorials seem to focus on the power 
user by telling people to open up a terminal, most of that stuff is copy 
and paste kind of stuff, and much of it can be done without a terminal 
as well. It certainly can't hurt to learn a bit about it, but it is a 
pretty scary place for people who are new to computers. Fortunately 
though, we do have easy-to-use desktops and applications, and I was able 
to successfully show someone how to do anything they needed to do on 
their computer, including some pretty advanced stuff, without opening a 
terminal even once, since the terminal is still useful for some things, 
but has not been the only way to do things for some time now. Again, I 
don't knock it, but it definitely can be scary even now that the 
landscape has improved somewhat fairly recently, and if I can, I avoid 
terminal use, not for myself, but for teaching new users how to use a 
Linux computer. I definitely will steer clear of things like Mutt, and 
certainly EMACS, as these are the kings of the scariest terminal lands 
that seem to be popular among power users, but I gave up on trying to 
make these work years ago, as power user though I am, I couldn't get 
past the extremely steep learning curve just to get them configured. Oh 
yeah, and Edbrowse was another that I just couldn't get to do anything 
meaningful for me. Again, that was many years ago now, but I doubt it 
has become less scary and more usable over the course of that time. Just 
trying to figure out how to get it to show me part of a single page on a 
website was not something I could get working, let alone actually trying 
to click a link that goes somewhere else, even on the same page.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

