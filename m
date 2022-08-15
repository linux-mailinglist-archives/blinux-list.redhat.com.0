Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB7259327A
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 17:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660578706;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Lrm7OUJpq+avAsfsTYgfq4ZdqqOQLS/+1v0k63U6Oqw=;
	b=c/BtsjvjMPkwqpU1lV1MGHaKFNyUctOWxpTlCSf7V3uy6eEGCdutt8XfMkl4J7Z/yQv+wC
	xQsAIEqYhgMZurTbQnDZrwG4PzKKK+PsMgYKncnqqT4anwmk5OCD4UMehnBapYJqDng/Cl
	jLL0Q0VnkZr7GHj7h/HwCQz2TsGv/O8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-607-Roa0y0IdOiCUrRJmU_YwTQ-1; Mon, 15 Aug 2022 11:51:43 -0400
X-MC-Unique: Roa0y0IdOiCUrRJmU_YwTQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8184D185A7B2;
	Mon, 15 Aug 2022 15:51:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 672BA945D7;
	Mon, 15 Aug 2022 15:51:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 08CE21946A55;
	Mon, 15 Aug 2022 15:51:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <mailman.526.1660482367.10505.blinux-list@redhat.com>
 <mailman.570.1660487404.10502.blinux-list@redhat.com>
 <mailman.564.1660515996.10499.blinux-list@redhat.com>
 <mailman.613.1660532979.10500.blinux-list@redhat.com>
 <mailman.685.1660569154.10504.blinux-list@redhat.com>
 <mailman.722.1660575675.10503.blinux-list@redhat.com>
Date: Mon, 15 Aug 2022 11:51:35 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <mailman.722.1660575675.10503.blinux-list@redhat.com>
Message-ID: <mailman.664.1660578699.10505.blinux-list@redhat.com>
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

Valiant8086 here. I'm 99 percent a Windows user, and I use command line 
a fair bit honestly. Just as you mentioned, what ever tool seems most 
efficient and friendly for the user is what they should be using.



Cheers:
Aaron Spears, AKA Valiant8086 General Partner at Valiant Galaxy Associates "we make (VERY GOOD AUDIOGAMES) for the blind comunity" http://valiantGalaxy.com

On 8/15/2022 11:01 AM, Linux for blind general discussion wrote:
> See I'm curious. I've been watching this thread and figured I'd leap 
> in. My setup is I havve a WM going, Ratpoison in my case find terminal 
> things easier to use, for example pipe-viewer for Youtube videos 
> without fighting with the frankly, clunky and obtuse Youtube main site 
> that's trying to force me to bee Google's slave.
>
>
> So I'm in this weird spot where I'm using, say, Firefox or web 
> browsing, but say if I download a news article or something for, let's 
> say, a blog post and I need to quickly grab text I find it quicker for 
> me to fire up w3m in my terminal, select what I want and copy it that 
> way, than use Firefox to do the same task.
>
>
> Or for email, I prefer the quickness and ease of use of Mutt, I can go 
> in, delete a bunch of emails for example, without having to deal with 
> Thunderbird/Evolution's laginess and Orca freezing up in a folder with 
> thousands of messages for example.
>
>
> I'd argue that trying to force GUI usage isn't really the right 
> approach, instead more of okay, here's a set of tools, some or CLI, 
> some are GUI, use what works for you and your use cases. I can't use 
> GUI tools when SSHing into a machine really, so personally, I'm in 
> this hybrid sort of setup where I do have a window manager and access 
> to graphical apps, but I prefer to use the terminal and CLI for 
> several things that I find too clunky with a desktop. That and I don't 
> have to deal withh things such as Orca getting stuck in a CLI app, 
> that doesn't happen at all.
>
> So TL:DR Use what works for you no matter if it's CLI or GUI, use what 
> suits you best IMO
>
>
> On 8/15/22 14:12, Linux for blind general discussion wrote:
>> (from Matt Campbell)
>>
>> Thanks all for the appreciation and memories. But I'm afraid that, at 
>> the risk of getting philosophical, the person who created ZipSpeak 
>> and trplayer no longer exists. I remember being him, and I still have 
>> his name and email address, but I'm no longer him. I've changed so 
>> much over the two decades since then. Nothing makes that clearer than 
>> Chris's and Karen's concerns about my attitude toward Linux console 
>> users and, more generally, people who don't follow the whims of 
>> mainstream technology for whatever reason. And those responses have 
>> given me something to think about, but I don't yet know what I'll do 
>> about it. I said what I wanted to say on the Fedora accessibility 
>> article, and maybe I shouldn't have even let myself get pulled into 
>> that thread. But I think I'm now philosophically far enough away from 
>> many, or even most, in this community that I will probably retreat 
>> again from this list and other related lists.
>>
>> Matt
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

