Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6E4592043
	for <lists+blinux-list@lfdr.de>; Sun, 14 Aug 2022 16:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660488785;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rnAF4yxQg2oaTJTsw2JzUjYswVP/8AVbiBJVtkwwBks=;
	b=bjzIfDg0bc1HHwz7dtDfYH0pfC39jJzKDbB8CudHlWv0EtvfX7HUcbrZqh/xWJLfT0ohR0
	OCTMyr2s6A60xfQmnqpzV6f1UiPYlTKgH7Dej66ILkwzNpIkCjZ/Gol9wSOc4AacQvZBgA
	xvLFUnbgNbS7TDqzFgG6OiBiy8ao1HQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-576-TQ4RlBQPOa2SWy2Met23pQ-1; Sun, 14 Aug 2022 10:52:50 -0400
X-MC-Unique: TQ4RlBQPOa2SWy2Met23pQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFB321C05AE6;
	Sun, 14 Aug 2022 14:52:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3857690A04;
	Sun, 14 Aug 2022 14:52:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BB16A1946A49;
	Sun, 14 Aug 2022 14:52:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 14 Aug 2022 10:52:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <mailman.526.1660482367.10505.blinux-list@redhat.com>
 <mailman.570.1660487404.10502.blinux-list@redhat.com>
 <mailman.553.1660487803.10503.blinux-list@redhat.com>
In-Reply-To: <mailman.553.1660487803.10503.blinux-list@redhat.com>
Message-ID: <mailman.533.1660488767.10499.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

No, it seems you are the person I have to thank. It was indeed the Linux 
version of the FreedomBox browser I used at that time, and it was a game 
changer. I started with Linux in early 2003, finding it to be overall 
far superior to anything I had used before it, mostly Microsoft's Dos, 
Windows 3.1, 98, ME and XP. But I had to keep my less than legal XP and 
my illegally authorized Jaws at that time because of issues I had 
working with banking and other online payment systems and other sites 
that had already lost, or possibly never had, the ability to work well 
in text-mode browsers. Yes, that self-voicing browser, I seem to recall 
it speaking using DECTalk speech, was indeed a game changer, and I see 
that my gratitude is not misplaced after all. Back at that time, I was 
doing everything in text mode and had to startx to get to a graphical 
session that could run the browser, but fortunately, by the time the 
Linux version of the FreedomBox browser stopped working, I was able to 
use Firefox with the screen reader called Gnopernicus, so I never again 
had to find an illegal copy of XP or Jaws so that I could pay my bills 
and shop and other things that required a fully graphical browser. So 
yes, thank you and Serotek for getting me over the last hurdle to using 
Linux full-time, and thanks also to Sun Microsystems, Igalia and many 
others for all the work that has gone into overall accessibility of 
graphical desktop environments and Linux applications since then.~Kyle


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

