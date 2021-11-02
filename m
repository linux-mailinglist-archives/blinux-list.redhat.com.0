Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C79442E75
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 13:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635857397;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NYW9+W2JzezM/wD/rMLuXqp87BfCEE3TGaQD4JEXi8I=;
	b=CgXUXB3MgDRStXEYMeApO14Z3AFisf7mnpm2Wh6xZKNfWOAUn67js5w6jz6uRu1qKsDVLf
	XwVrsINj5aOLscvB+ABtKGUBZMXPQ3Kzrd/crUjn9yJWjEr7HaWpIFopZfIZnU83/QelQC
	cXwrlxb9xxoYH3Ym7ccY3MJAVzZWa4Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-ZB5ZhE6eNLSjCv8AGq7Baw-1; Tue, 02 Nov 2021 08:49:54 -0400
X-MC-Unique: ZB5ZhE6eNLSjCv8AGq7Baw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80560120B384;
	Tue,  2 Nov 2021 12:49:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4B335C232;
	Tue,  2 Nov 2021 12:49:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DB6F04EA2F;
	Tue,  2 Nov 2021 12:49:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2CnbYJ012739 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 08:49:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AB4862026D64; Tue,  2 Nov 2021 12:49:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6E4D2026D5D
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 12:49:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6725811E78
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 12:49:34 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-193-RFriXw1aMVSNnquve2Wtfw-1; Tue, 02 Nov 2021 08:49:33 -0400
X-MC-Unique: RFriXw1aMVSNnquve2Wtfw-1
Received: by mail-qt1-f181.google.com with SMTP id n2so18717920qta.2
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 05:49:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=gmKuehiNNOEDRwqcc2UwdRLlnO4xrLFPSyVr1C34Hvw=;
	b=c4+/GaeWkzGB+8j+q2iURyMpIKLFOXB8CfrUvYh5fqZGwNG3lfNxy4+uJxNz2g8klg
	0WQSMoIjPUSP/65XhQAM5OLJMcAkuDv3hgow/CcqsVV3+wyAUanSRG0gfwLld961ocWV
	O90PqgbI4pzseY2x4ST1nDj0PtcQsiRwQc9Zg/jVab7TvH6BcZP5X9mpsz5wvE9HbaXB
	cOkk/ELWuVgrOFe5Pk5dm75zlyzLdp6aIY51oPS4O3ygMKhOO2AEqfV5m0EjDuNdu4TE
	gVRM1Kg+ytjHrNljKr1v7SzehPqmhv/QdavzYz3Jq9zhMRj25xBxnfobTv/nEopiHBu7
	w1+w==
X-Gm-Message-State: AOAM532WLpQVCYYGlgkLqurxWqEZmlSzpg2xm+jj/ksEh7F509X3S8VH
	rj4XhbXpIGI0M4DK1cI6edt2dQESORw=
X-Google-Smtp-Source: ABdhPJysp0gHZiiFBa/V26l+2KHu4tW5yC56xuYn2zeuxKUfmmuCD21ehiYLgyfunVyuPdvgO+Y8mw==
X-Received: by 2002:ac8:7f84:: with SMTP id z4mr21566246qtj.81.1635857372651; 
	Tue, 02 Nov 2021 05:49:32 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	v17sm12394474qkl.123.2021.11.02.05.49.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 02 Nov 2021 05:49:32 -0700 (PDT)
Message-ID: <36bd3345-96bb-1017-ea91-515a51d27b23@gmail.com>
Date: Tue, 2 Nov 2021 08:49:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<936cb6cb-f5da-20f3-be49-5c788d24caaa@gmail.com>
	<CAGJxbF6OOu6AygAWQm1+mi9SCAsNshWYSTcooNHzG+n7PQiXPA@mail.gmail.com>
In-Reply-To: <CAGJxbF6OOu6AygAWQm1+mi9SCAsNshWYSTcooNHzG+n7PQiXPA@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

And there's my point. I did read documentation, but I shouldn't have to 
take a class or get a degree to figure out how part of my screen reader 
is supposed to work. I shouldn't come out of reading documentation to 
try to figure out part of my screen reader only to be left more confused 
than when I started either. I turned on Orca and figured it out right 
away, whereas when I needed to try to get nvda working just to partition 
a disk for someone I was working with at the time, it failed miserably, 
and getting a degree in screen reader design and development just to 
figure out what an object was or how to navigate it simply would not do.


And I do believe you were made aware of why there is a difference 
between navigation key toggling and focus mode. OK yes, I rather dislike 
focus mode in general, since I can remember when Orca's browser 
navigation just worked, and I could navigate to a text box and just 
start typing something and it would just work, and I could simply tab 
off the textbox to interact with the next control. Sadly those days are 
gone, although there is a setting that gives me back much of this 
functionality. I do still have to turn off structural navigation in some 
cases where I don't want focus mode, but this is due to the website I'm 
using. Focus mode on the nearest text field on textnow.com for example 
puts me in a field where I would be sending a text message, which is not 
what I want to do when I'm calling a system that needs me to dial 
numbers. And entering into focus mode on an odd part of the page locks 
me into that section, so I am unable to read up or down if needed. 
Fortunately in this case, all I have to do is to turn off structural 
navigation anywhere on the page and just dial the numbers I need. The 
same is true of Google Voice, which I use extensively for my job that 
requires that I enter an agent number and a one-time password to be 
connected. I have found it much easier to just type in my codes with 
structural navigation turned off than to have to go and open the dial 
pad, then find the open text box, which puts me into focus mode and then 
dial my codes. Again, is it perfect? No, not by any stretch, but it's 
also not unusable or even painful. Toggling structural navigation allows 
you to use your navigation keys to do other things in places where you 
don't want focus mode, and I for one don't want to see this 
functionality taken away because you or someone else thinks it's 
unnecessary. It is certainly a necessary part of my workflow, as 
demonstrated above.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

