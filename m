Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 014CB603642
	for <lists+blinux-list@lfdr.de>; Wed, 19 Oct 2022 00:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666133713;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b7Rsa4V3XtOQIj+ormz418gSnhKrx/3X6M4GhzLl3fU=;
	b=R75WFHz6f8GYf452yLo8/MDu/n4EInCXpb86JrHXuts8VFgSJJmqSmRmRYiT7eZRm5JrFX
	g3Rn5/4Ymfol/5GcIK7n+VXSSiGjz/ZA4Kz9UtLe5Vs8DIQXwPkklX7K8sWR0zLGe2ArUH
	CFNF7F/C1DQHK4keQoweCRmCKzQWpog=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-311-nWfj0BwDO3eReUn7UG49Mw-1; Tue, 18 Oct 2022 18:55:10 -0400
X-MC-Unique: nWfj0BwDO3eReUn7UG49Mw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AAB51380670E;
	Tue, 18 Oct 2022 22:55:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A48112166B41;
	Tue, 18 Oct 2022 22:55:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1BF0D19465A2;
	Tue, 18 Oct 2022 22:55:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Oct 2022 22:54:59 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Turning off screen in Linux
References: <mailman.882.1666078921.3006.blinux-list@redhat.com>
 <mailman.880.1666101707.3003.blinux-list@redhat.com>
 <mailman.952.1666105929.3007.blinux-list@redhat.com>
 <CAO2sX31cRKcio+HHhbb40Hs+JNSQW9VUmQnZz2xFjSM4zjA+Ew@mail.gmail.com>
 <mailman.907.1666109020.3003.blinux-list@redhat.com>
 <mailman.914.1666112569.3003.blinux-list@redhat.com>
 <mailman.948.1666117564.3008.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.948.1666117564.3008.blinux-list@redhat.com>
Message-ID: <mailman.949.1666133703.3003.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  There's "dark mode" as meant by most folks (where the
colorscheme tends to be light text on a dark background which I
find easier on my eyes), and there's the "Dark Mode" on this phone
which actually turned off the screen completely, only keeping the
touch-aspect on, so it looked off but was completely usable as far
as VoiceOver went.

In this case it's a pretty *ancient* Samsung Galaxy J3 which didn't
have 5G support so our carrier, Ting.  But that's the one with the
better accessibility features.  So I replaced it about 2 years ago
with a Unihertz Jelly2 which is a tiny little thing, about the size
of a small flip-phone except it is running actual Android.  I love
it, but I acknowledge that it's not for everybody (it drives my
wife nuts when she has to use it for anything, since it's so small)

-Tim

On 2022-10-18 18:26, Linux for blind general discussion wrote:
> Dark Mode should be a standard feature on Smartphones, but that any
> phone has such a feature is better than I expected. Do you happen to
> recall the make of that older phone? I picked the Moto G Power 2022
> for my learning experience as the model line has a reputation for
> being good, entry-level phones with close to stock android, the kind
> of battery life where you aren't screwed if you forget to charge it
> every night, and based on a few positive reviews of prior models from
> users on this and other Linux accessibility adjacent mailing lists,
> but so far I've only really gotten around to completing the Talkback
> Totorial and figuring out where they hid the SD slot(there isn't a
> standard SD slot per se, but a tiny drawer you need to use a pinhole
> eject button to get at it. Its like they tried to make using memory
> cards on this thing as inconvenient as possible short of having to
> disassemble the phone).
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

