Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 365214430AB
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 15:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635864111;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E2iMmP+jJXEhvlSelZH4k5xIgbzTDRrqfH4IN4ezEeY=;
	b=c+9lJQkPJroFXc1M1ttQuhcEbe5Vv4uUN53vCYraaAi7dMBVhC4TlVOO1nuXNzlmLG4nni
	X68utpWaHWPfBvRikwas6Y4l/pT4+9csrjbml7PMQ1nZ4mpQ6286fvmhtGWlCa0QGmxOIS
	enu9EOTYdkCd+Ch5+3uTVy9RsNPFePU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-HusV09h4OFeRWGpvh3y6FA-1; Tue, 02 Nov 2021 10:41:47 -0400
X-MC-Unique: HusV09h4OFeRWGpvh3y6FA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5243F1083274;
	Tue,  2 Nov 2021 14:38:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58B027AD16;
	Tue,  2 Nov 2021 14:38:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 907D51806D04;
	Tue,  2 Nov 2021 14:37:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2EbkRe024826 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 10:37:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2DA8D51E1; Tue,  2 Nov 2021 14:37:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2847151DC
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 14:37:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D359802E5C
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 14:37:43 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-362-v1_PGfoyPeWFVUle6if38A-1; Tue, 02 Nov 2021 10:37:41 -0400
X-MC-Unique: v1_PGfoyPeWFVUle6if38A-1
Received: by mail-qv1-f53.google.com with SMTP id s9so10741516qvk.12
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 07:37:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=NBJllnxSjDcgOzxy6ajhmqfvPFzc6qcHDm/gzsRglzA=;
	b=qH9SD0xYx+P3flLllrkiL0cj+9F7PtgJJcqXBFd7JcLUgmtIzjRyKvqywcFihPExjJ
	+euQmG5MSQOMV8ZeugDaRUrttMXw7LOBA17K89DWAGHYLRWH2sfa2nV5n3gB+/70it4u
	opmKf1zQzWlh3/iSxpgPdfjTCkURaAEm8GC1CGFsvUYfssPxVM7ZnbwNQ6d3XHjH+RzL
	DURxjJJ+Ws+2oWrENF90e8H5yNyCnGhxYMMLmYRZTjaABehJ5eVHn0ngZuyRWkrt7Zu2
	fL+3m4k3pQuDnEFBQm9pTltqONn11ZVtS8X4UESMRAe4ibMPVJYmdJ1tsX/41OqpuXwF
	kYcA==
X-Gm-Message-State: AOAM5338MPFgyXBrpVfwHu/0row2jYxujbSb1yT2R/1rzG9vghHGXnvO
	gH90OEWp7pRzKAM21upnGnmVh99EKGM=
X-Google-Smtp-Source: ABdhPJwe6aH3CIXwNDOsnlJYet0TlQ+Lvt88b0LVPOAyxuTaaePSHHkV3sngc68UfWEZBzRkA/i1AQ==
X-Received: by 2002:a0c:8cc5:: with SMTP id q5mr35901645qvb.52.1635863860996; 
	Tue, 02 Nov 2021 07:37:40 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	v22sm12215152qta.74.2021.11.02.07.37.40 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 02 Nov 2021 07:37:40 -0700 (PDT)
Message-ID: <8749162f-769e-3979-268e-8b3a836ba2da@gmail.com>
Date: Tue, 2 Nov 2021 10:37:39 -0400
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
	<36bd3345-96bb-1017-ea91-515a51d27b23@gmail.com>
	<CAGJxbF5-71mrqr8EgJjRnbFHQCUPYTvFw8meCeViu1TTKCnHHw@mail.gmail.com>
In-Reply-To: <CAGJxbF5-71mrqr8EgJjRnbFHQCUPYTvFw8meCeViu1TTKCnHHw@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The choice isn't what bothers me ... I love choice, having the freedom 
to choose. It's the trash talk that so clearly detracts from the 
entirety of the concept. Why is this so hard to understand? This is not 
a competitive game, it's not my team is better than your team, your team 
sucks and mine is better, your choice is the devil and mine is the one 
true god. It can't be this way. The choice is between free and open 
source options, and it is even possible to choose both, since they are 
each better suited to different workflows for different people, and it 
is possible that my personal workflow could benefit from having both 
options available at different times. Leave the trash talk in the boxing 
ring, where there can be only one winner. If both concepts can win, then 
both should try to be as good as they themselves can be instead of 
trying to make the other look bad in order to give a false sense of a 1 
or 0, true or false, a or b choice that simply doesn't exist since it is 
perfectly logical to choose all of the above.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

