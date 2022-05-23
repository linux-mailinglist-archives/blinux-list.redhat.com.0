Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B8798531529
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 19:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653325254;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6leUCCJBdTCKB/JK9GHegjYLc2sr0TOyW1SnwFaokmM=;
	b=Cl0cAoiMc627FR6AsZps4mDNBTfzF7QX5cloeKYLAI5w7Ejxqyye/Qawhu+v+86RSaaJLE
	39qrIYBvXFwikJC/jH+UVoDwnA/+/p7hjuFz2jUh1WbKILC8ZY9U9BW5Qa5QkDcBdq3I8t
	4T01amKsAfW+zXF9p8lzSd9RMOxbo/c=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-540-de-57HR_O1W7Juziy-wLhA-1; Mon, 23 May 2022 13:00:51 -0400
X-MC-Unique: de-57HR_O1W7Juziy-wLhA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90A5F1C06EC0;
	Mon, 23 May 2022 17:00:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 621E6C27E9D;
	Mon, 23 May 2022 17:00:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 01152194705F;
	Mon, 23 May 2022 17:00:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: I'm in crisis, help!!!
Date: Mon, 23 May 2022 12:02:20 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.17589.1653325072.111202.blinux-list@redhat.com>
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17727.1653315588.111206.blinux-list@redhat.com>
 <mailman.17535.1653315811.111208.blinux-list@redhat.com>
 <mailman.17382.1653316520.111210.blinux-list@redhat.com>
 <mailman.17589.1653325072.111202.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.17580.1653325248.111208.blinux-list@redhat.com>
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
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

You have to remember that virtual machines are heavily dependent on the hos=
t. So just because you don't see hardware problems in a vm doesn't mean you=
 won't see them on bare metal.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Mon, 23 May 2022 16:57:39 +0000
Subject: Re: I'm in crisis, help!!!

> Hello everyone,

I just wanted to ask, did anyone else notice Ubuntu Mate 22.04 messing
audio devices on startup?


I'm just in a transit process, where I have installed the new system
into a virtual machine to see whether it's okay, so I could install it
on my laptop afterwards.


I've been using the VM from time to time, and I didn't observe any
audio-related problems.


That's why this thread surprised me a bit.


Also, regarding Gnome, does the Fedora version of Gnome work better than
the Ubuntu-one?

I've tried the main version of Ubuntu as well, just to see how it's
doing, and it weren't usable much, even less than it used to be due to
the problems with the caps-lock key.


Best regards


Rastislav


Dna 23. 5. 2022 o 16:35 Linux for blind general discussion nap=EDsal(a):
> Be VERY cautious about what you put in the restoration script, especially=
 if it is run as a startup script.  In particular, you don't want it to tra=
sh an already working configuration.
>
> -r
>
>> On May 23, 2022, at 07:23, Karl Wilbur wrote:
>>
>> ... You can also hook your custom script into startup so that it runs
>> as soon as possible when the machine is ready for it.
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

