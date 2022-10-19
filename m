Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D1604311
	for <lists+blinux-list@lfdr.de>; Wed, 19 Oct 2022 13:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666178596;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5Q/JyL5brnxal9+zFxNDOkgrUCMBimOotH6SwW9QH8w=;
	b=fU4X722vTg1/LL+R7Jf2FnSlCg/MeA2uEnkS4GE4A65UjCb+9KL74LuzTeBfF8BJoNEdBc
	JSI3W/7EoJVtxHuo27C5/r9DraQYTAS4ro+L0Y7V8nqMCRK+RKN3cYToSa3+VhEWHNGJYy
	E086/jSEYlTgDa+O+u5tHroLklFjsCc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-AamcAVdkPCijDbkWfqgLvA-1; Wed, 19 Oct 2022 07:23:12 -0400
X-MC-Unique: AamcAVdkPCijDbkWfqgLvA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13A3080280D;
	Wed, 19 Oct 2022 11:23:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B6391112131B;
	Wed, 19 Oct 2022 11:22:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CA4EC19465A3;
	Wed, 19 Oct 2022 11:22:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 19 Oct 2022 11:22:43 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Turning off screen in Linux
References: <mailman.882.1666078921.3006.blinux-list@redhat.com>
 <mailman.880.1666101707.3003.blinux-list@redhat.com>
 <mailman.952.1666105929.3007.blinux-list@redhat.com>
 <CAO2sX31cRKcio+HHhbb40Hs+JNSQW9VUmQnZz2xFjSM4zjA+Ew@mail.gmail.com>
 <mailman.907.1666109020.3003.blinux-list@redhat.com>
 <mailman.914.1666112569.3003.blinux-list@redhat.com>
 <mailman.948.1666117564.3008.blinux-list@redhat.com>
 <mailman.949.1666133703.3003.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.949.1666133703.3003.blinux-list@redhat.com>
Message-ID: <mailman.1057.1666178577.3010.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim again.  Just a small *derp* correction:  I wrote "VoiceOver"
(Apple's engine) where I meant "Talkback" (Android's)

Sorry if there was any confusion.

-Tim

On 2022-10-18 22:54, Linux for blind general discussion wrote:
> Tim here.  There's "dark mode" as meant by most folks (where the
> colorscheme tends to be light text on a dark background which I
> find easier on my eyes), and there's the "Dark Mode" on this phone
> which actually turned off the screen completely, only keeping the
> touch-aspect on, so it looked off but was completely usable as far
> as VoiceOver went.
> 
> In this case it's a pretty *ancient* Samsung Galaxy J3 which didn't
> have 5G support so our carrier, Ting.  But that's the one with the
> better accessibility features.  So I replaced it about 2 years ago
> with a Unihertz Jelly2 which is a tiny little thing, about the size
> of a small flip-phone except it is running actual Android.  I love
> it, but I acknowledge that it's not for everybody (it drives my
> wife nuts when she has to use it for anything, since it's so small)
> 
> -Tim
> 
> On 2022-10-18 18:26, Linux for blind general discussion wrote:
> > Dark Mode should be a standard feature on Smartphones, but that any
> > phone has such a feature is better than I expected. Do you happen to
> > recall the make of that older phone? I picked the Moto G Power 2022
> > for my learning experience as the model line has a reputation for
> > being good, entry-level phones with close to stock android, the kind
> > of battery life where you aren't screwed if you forget to charge it
> > every night, and based on a few positive reviews of prior models from
> > users on this and other Linux accessibility adjacent mailing lists,
> > but so far I've only really gotten around to completing the Talkback
> > Totorial and figuring out where they hid the SD slot(there isn't a
> > standard SD slot per se, but a tiny drawer you need to use a pinhole
> > eject button to get at it. Its like they tried to make using memory
> > cards on this thing as inconvenient as possible short of having to
> > disassemble the phone).
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> > 
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

