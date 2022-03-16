Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4D34DB58F
	for <lists+blinux-list@lfdr.de>; Wed, 16 Mar 2022 17:02:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647446571;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WKTrUQ0EePiOVODJD1qV+9SejgXg8URScr7XXZQ2EHk=;
	b=I2LkKS/+brQM6sOuidUhvgyyzKZ0YeVRk8eZpEB2kfwec79+Gkt28wy4XiSm5q1QgypIET
	KMdBXUqk0UA5ENDQCJWimgzBGbCItwiqNEISv6E8I4LBLxKa9d62rhAy7/lcw7relS9mDx
	RUrj1dGiNQcxRnMUAvHoooeuPUXQ+F4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-532-ySAytnemNSypeMP8gJXKVQ-1; Wed, 16 Mar 2022 12:02:49 -0400
X-MC-Unique: ySAytnemNSypeMP8gJXKVQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CDA3B85A5BC;
	Wed, 16 Mar 2022 16:02:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 513A9404D8F8;
	Wed, 16 Mar 2022 16:02:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B320D1940356;
	Wed, 16 Mar 2022 16:02:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 16 Mar 2022 12:02:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Linux music production workflows (was Re: How to use fluidsynth?)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2260.1647423261.111210.blinux-list@redhat.com>
 <mailman.2165.1647426611.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.2165.1647426611.111205.blinux-list@redhat.com>
Message-ID: <mailman.2670.1647446560.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I will be following this thread very closely, as I'm not doing this for 
a living *yet*, meaning I'm not getting paid for it right now, but this 
is coming very very soon now. I don't see it just on the horizon, it's 
actually on the doorstep. I wasn't aware of midish, so I'll give that 
one a look. I do have a hardware midi controller that I received from my 
favorite musician along with every piece of gear I needed to get started 
save the computer and software, and I've found that using fluidsynth 
with it is actually not hard to do. The way I'm currently doing it runs 
fluidsynth in one terminal window and takes another to connect the 
hardware controller to fluidsynth. So I run something like

fluidsynth /usr/share/soundfonts/whatchamacallit.sf2

in its own dedicated terminal window so that I get access to 
fluidsynth's shell, then in another terminal window I run

aconnect -l

to list my midi ports. My hardware controller is sometimes 24 and 
sometimes 28, and my fluidsynth port is usually 128, but yesterday it 
was 129. So once I get those port numbers, I can

aconnect 28 129

which was the set of port numbers I got yesterday, and then when I play 
a note on my midi keyboard, it plays through the computer speakers. My 
controller has buttons that cycle through instruments and also switch 
octaves, but fluidsynth can do this from its shell also. I just find it 
easier for now to use the controller for this.


The best way I have found so far to get music from my keyboard to a 
sound file has been using Pipewire or Pulseaudio to set up an output 
that fluidsynth plays to and an input that Audacity can record from, but 
I'm sure there's a better way to do this, probably with something like 
midish or similar, as mentioned earlier. Of course I'm very interested 
to find an easier workflow for this, just as long as it doesn't require 
that I purchase another computer or an OS I don't want or feel that I 
need. Something other than Audacity that can flip samples and make beats 
would be great as well, as I'm experiencing some assertion crashes 
trying to use Audacity over the past week for some reason. It hasn't 
been updated recently or anything, it just crashes with an unhandled 
assertion, and trying to recover from the crash yields yet another 
unhandled assertion. Well, this train has gotten a bit off the track, so 
I'll change the subject to fix that. In any case, good luck with 
fluidsynth. It's definitely a must-have for music production.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

