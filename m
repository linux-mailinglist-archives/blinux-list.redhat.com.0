Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id CDD5D222842
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jul 2020 18:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594916922;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YhphCkcKOWiK2NiaHKkEOjYZ7kIXIeSUBEuXCg41qmo=;
	b=bY+s/lY3y509me3PPGwKOKGawG517nxYZCB6JlxZtJQX5Df5e/MJF/w72pdEuaccBnVMeN
	YhzvCQyJAzEi4GY7ixmCNCVeQQBiUMNnzBT/NNRUTMGu3v3R9klakGBiuHFUedSe2Wf6et
	XUxIQBJJPS+qRKHVOxM4B6W+1u1hNHg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-xKuW1T0QNcK0aE26YBkO5w-1; Thu, 16 Jul 2020 12:28:27 -0400
X-MC-Unique: xKuW1T0QNcK0aE26YBkO5w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C830800465;
	Thu, 16 Jul 2020 16:28:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A99975542;
	Thu, 16 Jul 2020 16:28:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 79EA71809554;
	Thu, 16 Jul 2020 16:28:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06GGRUMq012269 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Jul 2020 12:27:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27E542156A3B; Thu, 16 Jul 2020 16:27:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 219022157F26
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 16:27:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ACE031832D22
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 16:27:27 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-234-WFN2E45nPZKCEcaPOI9rJw-1; Thu, 16 Jul 2020 12:27:24 -0400
X-MC-Unique: WFN2E45nPZKCEcaPOI9rJw-1
Received: by mail-qk1-f172.google.com with SMTP id q198so6089389qka.2
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 09:27:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=TbNWwsVeb2YzWdXGK2CvVgQXK79LX3xciDBTpEy7lqk=;
	b=CA4dByTgzVI5vt+XG7vkE4s7U1Zk+q7024naOIA++5Y9bkPro3GOkWddGcOR/Pr5pk
	+v0Hf/T1M6mWeoltXsqdrVdnI0CySK5FEqfxC2zVwM059nae/6RnKLfdM94oraRwLFLJ
	rfNi32jeoCVk0NzpLQfeYjzyvtBvwHkJC5vGS1LgPKPAibQ+K5J9NjBB/d/qJAb/rMGi
	aczZConsvVOggMNmsVT8jpcfIoUpaNCQPWEQkhzUxNRJCBzDyqy4MxKRzG9xxgS+ddT6
	9vNpA7kpw7eq4hFguvyIUFXKxpeVRMBEhleUued5HG3IW2rNcxcPuVcMJVaKt8tzoTVy
	Jmpg==
X-Gm-Message-State: AOAM531tE+jltCffCwWnBp/t+mwcHT9YEGJHAHbltPjHfH1A7y+k09AF
	QWOIbkTSMxmSA44E1PZJ7enPwwhmGt4=
X-Google-Smtp-Source: ABdhPJwQXPv4Bw665zyM8KSraFQpBjuzEVKxUHN8I9kcVWthNJggIwNtHxPEL9ZAGqRMHTkrTRsBpw==
X-Received: by 2002:a37:b56:: with SMTP id 83mr4622026qkl.362.1594916843932;
	Thu, 16 Jul 2020 09:27:23 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	o20sm8767437qtk.56.2020.07.16.09.27.15 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 16 Jul 2020 09:27:22 -0700 (PDT)
Subject: Re: Raspbery which os
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fd69e654-2c7f-c4fe-90fb-6f3b4798ff6b@gmail.com>
Message-ID: <f04ab705-e24a-958a-2320-f1d374c3bc18@gmail.com>
Date: Thu, 16 Jul 2020 12:27:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fd69e654-2c7f-c4fe-90fb-6f3b4798ff6b@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

ArchLinuxARM can be installed on the Raspberry Pi 4 with MATE, although 
I don't have this model currently. I'm actually looking at purchasing 
the 8GB model in a few weeks. For a prepared system, you can try Stormux

https://stormux.org/

You can just write the image on your card and let it boot up. It asks a 
few questions now, but future versions are supposed to just come up 
talking, and are to be a bit more minimal. But the current version has 
MATE preinstalled and talking.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

