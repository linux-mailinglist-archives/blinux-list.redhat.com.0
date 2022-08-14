Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E284B59202C
	for <lists+blinux-list@lfdr.de>; Sun, 14 Aug 2022 16:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660487414;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rIWsTVSQnAS24o7crCv5I9jXAN2gn9pmlxQ7yZGaO8A=;
	b=IqCHbqRJs4rRJMjCjPKnZBzDYciKTbv3jO6a4629CxnPGAUUqwvEZaLBDVxEzxIGBoghk4
	9a5Fo91AWwLLvP30H3mk9FYV0lg8k+vZTnNekhvoSUx60y2QCcTf2DQGp0uc0rrlkt0c6Z
	JmYgkXABPRy3JNdq7z4Nn9923mO1tEI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-MpdKhwwpPD2i_Gp6XakNxg-1; Sun, 14 Aug 2022 10:30:13 -0400
X-MC-Unique: MpdKhwwpPD2i_Gp6XakNxg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F3EE5101A586;
	Sun, 14 Aug 2022 14:30:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 948022026D64;
	Sun, 14 Aug 2022 14:30:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E7B651946A49;
	Sun, 14 Aug 2022 14:30:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 14 Aug 2022 10:29:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <mailman.526.1660482367.10505.blinux-list@redhat.com>
In-Reply-To: <mailman.526.1660482367.10505.blinux-list@redhat.com>
Message-ID: <mailman.570.1660487404.10502.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hey Matt,

Am I way off base here, or are you one of the guys behind the browser 
plugin or whatever it was that allowed me to pay my bills through my 
bank on Linux for the first time way back more than 15 years ago, when 
banks and their online billpay services were still fairly new, but had 
already moved away from the ability to use them with text-mode browsers? 
If so, you are the one I need to thank for actually getting me off the 
Microsoft train completely. I always wanted off, but until your browser 
plugin came along, 2005 I think it was, browser functionality with my 
online banking was the only thing keeping my illegally obtained XP 
partition on my hard drive. So I have you and others like you to thank 
for allowing me to finally wipe it.


I just wanted to say that your response and your attention to detail 
when it comes to this article, as well as your research on the topic and 
even Red Hat and Lukas himself is very well done and well written. 
Regarding accessibility in general, you are saying things that I have 
been saying for a long time, since as much as I loved the text console 
and my ability to use it more productively overall than Microsoft's 
graphical environment, it didn't take me long to see the growing holes 
in the technologies available in text mode that made me have to reboot 
at that time into a system I was trying very hard to leave behind, and 
your browser plugin for Firefox followed by the subsequent development 
of GNOME 2.x, was what got me over that final hurdle. So I just wanted 
to thank you for your work and for your well-thought-out responses and 
research. And if you're not the one behind the browser plugin I used at 
that time, pass my gratitude on to whoever was responsible for it. That 
was certainly the turning point. *claps loudly*


And before I forget, yes, I am a Fedora user these days, although I'm 
primarily on Fedora-MATE-Compiz rather than Workstation. Still, the fact 
that a concerted effort is being made to fix what's broken or has fallen 
into disrepair is extremely good news to me, as I do still keep up with 
GNOME developments despite my strong MATE preference, and it does seem 
that MATE itself can probably benefit from much of this work also, since 
it uses GTK under the hood. I look forward to KDE developments in this 
area as well.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

