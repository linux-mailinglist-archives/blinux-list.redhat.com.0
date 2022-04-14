Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E211750031B
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 02:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649896851;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cVhB9rRSpXLfpIxvjCnRf76qatckjeTLxPYRyiCBi9M=;
	b=XXi70KWFaIvlCoPjK1afb6mC8GBC2JCBWF6UWO9XK/kh3S8VZ6WJWFibiZIqiZQE5t+hkQ
	gOqVhriQ3/+JvCkEHO15/WKMGQKCa0n3DrQqTCnZXqasWP2dVbQeGzOuK85d5m5Q0u/k91
	D+q0xqfM9vMJgODqJScjIcNvNd9wfFc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-209-b_q6BzVoNoaC51SQ4-aVGA-1; Wed, 13 Apr 2022 20:40:48 -0400
X-MC-Unique: b_q6BzVoNoaC51SQ4-aVGA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27939381D8A0;
	Thu, 14 Apr 2022 00:40:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1413E57C921;
	Thu, 14 Apr 2022 00:40:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6FACF1940353;
	Thu, 14 Apr 2022 00:40:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
References: <mailman.8265.1649867972.111207.blinux-list@redhat.com>
 <mailman.8540.1649878555.111210.blinux-list@redhat.com>
 <mailman.8410.1649894371.111202.blinux-list@redhat.com>
 <mailman.8347.1649895046.111209.blinux-list@redhat.com>
 <mailman.8491.1649895487.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.8491.1649895487.111206.blinux-list@redhat.com>
Subject: RE: FYI - Command Line Programs for the Blind
Date: Wed, 13 Apr 2022 17:40:40 -0700
MIME-Version: 1.0
Thread-Index: AQD8K/5kWsQcZhRDDSjXzskm5P51bQF3j8zgA0mL1acDNuku8gE+LcFvrl0kwPA=
Message-ID: <mailman.8492.1649896846.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Let me explain something, but I believe you just got mentioned on the list
but I'm going to explain it just to clarify. Not all deaf blind people are
completely deaf, and/or completely blind. Are probably thinking of "Helen
Keller" that was a century ago. No technology, and certainly no very
powerful hearing aids which in my case include Bluetooth audio. This is the
reason why I was asking about Bluetooth and up. As of the type of severe
hearing loss I have, thing to a computer from any distance can be a
challenge. But if I can use Bluetooth audio in this case to listen to the
speech if possible because I know will know operating system stayed some
variants of Lennix. Is Bo Windows, and Mac, seem to present data is there
are two different interfaces. Meaning speech, and braille. They are treated
separately. Meaning depending on what you're doing, you get more feedback
from speech that you will ever get written and braille. If I were able to
get truly everything that comes across the screen and braille. I would still
need Bluetooth access to systems sounds that are designed will alert 12
system events, such as an error box, my download, other critical system
events that there just isn't a way to print out what that issue could be. I
hope this clarifies things.

The thing that I think clearly may not exist at all in the LinuxWorld is how
I'm writing this email. I'm dictating it. Because of the written expression
disorder I mentioned. I would hazard a guess based on what I think I know.
It's gonna be some time before that really happened. Because there isn't a
"business necessity" that's from information systems school, I have a Bs
remission system, and user support. University in Colorado.

Thank you in advance for reading this, and I look for to reading your
responses on the email list.



-----Original Message-----
From: Blinux-list <blinux-list-bounces@redhat.com> On Behalf Of Linux for
blind general discussion
Sent: Wednesday, April 13, 2022 5:18 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind

To be fair, Chime...deaf isn't binary, no sound or all sounds. It's a range
just like blindness however so I get why the question about audio, but it's
not really my place to go how deaf are you. That's insensitive, just as
asking anyone on here how blind are you.

Aftr all, I know the popular idea is oh, I'm blind, or oh I'm deaf, but
there's a whole range within that category though.

For audio, you have choices...

Pulseaudio, which is, as far as I understand it, the legacy and one that's
been around for ages and ages, and Pipewire, the replacement. I've had a lot
of issues with Pipewire and virtual machines, and I'd argue Pipewire's still
too raw for the majority of Linux folks to use unless they are the super
leet hax0r types that feel okay doing a ton of stuff that's way, way above
power user levels.*

Plus, Pulseaudio, in my experience at least using a fairly standard USB
headset and earbuds in a 3.5mm jack...ust works out of the box on distros.

* It may have changed and become more stable. I'm not sure. I defaulted to
Pulse on my Arch box because I didn't want to go in and test out if Pipewire
works with my hardware setup...whereas Pulse just worked right away with no
fuss bar me accidentally messing up device selection one time

On Wed, Apr 13, 2022 at 05:03:59PM -0700, Linux for blind general discussion
wrote:
> Well, for an individual who is Deaf/Blind? You were asking about 
> audio? I would think you would only require Braille support?
> Chime
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

