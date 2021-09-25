Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8A8C5418349
	for <lists+blinux-list@lfdr.de>; Sat, 25 Sep 2021 17:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632584282;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=McvOYc5eJmjQEjoCPAXv537gthVYaTm0tQIw7C5OkLI=;
	b=FbFZCz4AUtECrAoy6QymJfHuOJgJK30vxQctCvpYEWRNF1MJcrxlJfxBoBAnZDOFTvotGb
	v+HKtvLfaZvX1nUQjoLc/lcB6cAT9S9PxA0QGieEWIjhsD8InTPkcTAa5A9yiGWck31v3P
	tN+JsA5e/IWs6CNEEYFOBLKOzGcX7Ew=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-OFJsB_ocN7G8BdMQEHiYow-1; Sat, 25 Sep 2021 11:38:00 -0400
X-MC-Unique: OFJsB_ocN7G8BdMQEHiYow-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 057FF1808305;
	Sat, 25 Sep 2021 15:37:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9D116A908;
	Sat, 25 Sep 2021 15:37:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 542B51800B9E;
	Sat, 25 Sep 2021 15:37:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18PFbOeF020608 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 25 Sep 2021 11:37:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D98802167808; Sat, 25 Sep 2021 15:37:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D43422167800
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 15:37:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27BD0811E78
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 15:37:22 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-54-c33WK-1BOneJ1mKq7ePV_w-1; Sat, 25 Sep 2021 11:37:20 -0400
X-MC-Unique: c33WK-1BOneJ1mKq7ePV_w-1
Received: by mail-qk1-f171.google.com with SMTP id p4so31902263qki.3
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 08:37:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=z4P/ElcCACS4daF1/jYFYvrgovWgjENUN2MU22HDrmk=;
	b=3rwjp56M7z8ClF/3C8sc4qPmrF0G9Yx5e7Z+KjyXwfgx9sL6uqZNZmNXF7G2MZ5aBd
	LImsBWriOTQK/j0Zs1Gtv9IIqvoZqqDTr3ubCtyNILxs/yw8HQbsZ9j3sSiwTSKqVd0W
	FcSqeeRS73rbGlNDlPtqfF+MHjOsRPc2uYARfWoKVPh/p7YWXQP47KoaLtmH3piJqG10
	6mWR9BdfM7ApLZ4LiicDhr7niBhSHN4bn6BTYyakeMe1hRmzkziMMf0s2iInrOq8Fq49
	4+gV4HCw8mb7cunLHZaViplfBkzOhRHJYN9CYcPTC44sv0oyS8fYQSHnu2RCzSeid8zE
	1z5Q==
X-Gm-Message-State: AOAM531sNfC7lSqcFl/7wku+YKGJg4b5vO1kp8k0NY11la6RnHREuwsR
	Kd4q9/SxyuFAwlviIaAPqKJB3W3va+g=
X-Google-Smtp-Source: ABdhPJwkh/dsBzt/ctmOkTWQzBRD6CZAB6xLHQwcE7iClYRx8UcYpOZp8SoxTPPCP2Ak8U3qIEsKeQ==
X-Received: by 2002:a37:88a:: with SMTP id 132mr16080858qki.151.1632584239689; 
	Sat, 25 Sep 2021 08:37:19 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	205sm9038892qkf.19.2021.09.25.08.37.19 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 25 Sep 2021 08:37:19 -0700 (PDT)
Message-ID: <e07cd8e4-5326-2d85-1cc6-997cacc80504@gmail.com>
Date: Sat, 25 Sep 2021 11:37:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Did Mate change the Brisk menu?
To: blinux-list@redhat.com
References: <3dda2919-2447-9f48-21ed-49c832ce4ff7@gmail.com>
In-Reply-To: <3dda2919-2447-9f48-21ed-49c832ce4ff7@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm running MATE 1.26 on Fedora Rawhide. I have the same menu I've 
always had, the menu bar with system, applications and places. I haven't 
played with the MATE version of Solus yet, but I plan to over the 
weekend. the overall OS looks pretty nice just playing around in a vm 
with the Budgie version. Gonna do a bit more testing using bare metal 
and possibly some USB or SD flash, since I don't wanna kill what I'm 
running on this box just now. I'm planning to play with both Budgie and 
MATE, although I still greatly prefer the MATE desktop over pretty much 
anything else I've tried.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

