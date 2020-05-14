Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 528261D25E9
	for <lists+blinux-list@lfdr.de>; Thu, 14 May 2020 06:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589431121;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U5fwoYsihPRt7NVPeExgmIxG6pjyFgLPdt4HN9Zea94=;
	b=cBwO4XacCKcQafvRcK/AxF3vg2fWpb5eSabL/6W78Cu74Tle6xzizcay7V85g10DIG4GCo
	2TbJ+OAx1cfxB9PxWetSdgQOt0RwfpSbEEeyJQHiOm4ou3CqO9AFmJXkUY6Ye+5EnGlcb2
	j4kWk/jsh+a1VxxzVtJGE0HeW9p2dNk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-Bl9gCHEdOSCh2GBX8fLkqQ-1; Thu, 14 May 2020 00:38:39 -0400
X-MC-Unique: Bl9gCHEdOSCh2GBX8fLkqQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C252F8014D7;
	Thu, 14 May 2020 04:38:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0ED7B5C1BE;
	Thu, 14 May 2020 04:38:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 513E81809543;
	Thu, 14 May 2020 04:38:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04E4cMGm023180 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 May 2020 00:38:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D94852156A49; Thu, 14 May 2020 04:38:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5A2F2157F25
	for <blinux-list@redhat.com>; Thu, 14 May 2020 04:38:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CADC0802641
	for <blinux-list@redhat.com>; Thu, 14 May 2020 04:38:18 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-147-DZn7KK7lPiea2h5ccJsXmQ-1; Thu, 14 May 2020 00:37:48 -0400
X-MC-Unique: DZn7KK7lPiea2h5ccJsXmQ-1
Received: by mail-qk1-f177.google.com with SMTP id y22so1832620qki.3
	for <blinux-list@redhat.com>; Wed, 13 May 2020 21:37:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=iR9r5Bdcv0oAM2losyppaWbPkpjHgfKknT89zXwpRvM=;
	b=VW6ZMS09eGy6JhAEH1L81TzOrw7C5FgKSLVGkSICTqvbtB3ArDNVR/NxGFklNRlNkQ
	jW7PEcm02Cre4dfV/+ZJMaOCKmBXI7fO4O5wkSffjFsUmi9TyjgYc8aq1efG+kBJYykt
	GqP7aM55uIad0aJwBhU9domNb9YIfXwjkVTzUKsom7H3VpCJrPIwX/Luhbo0tsor0oy7
	bIEzpkvtH/4c+YjITQ34hIsLMRU8fSsSBm42UGcJCMgKmiFQ4QK4HSZDkunNIxPPN8m5
	lupvGAyaAhoFCtEewR81DvBI28wYaia1UFMmF6mYEGaFCIMqF0QM4S47nfDcoqjPqhAS
	rBzQ==
X-Gm-Message-State: AOAM530/K5XRHoBwF7X3hxlzy2bPwuGytvafETjE+3OgBjbdo3kwg5ZC
	SXxO8awb5nNDzrZ102uy8VRfom5ITWQ=
X-Google-Smtp-Source: ABdhPJyCtGsv0a5jSJwLr0Kj+3S51igzFR7aiHxkmBIuv8QRPiTKy2Rsw7rkGXKmb6msrXTBwyYSrg==
X-Received: by 2002:a37:7302:: with SMTP id o2mr3106961qkc.474.1589431067728; 
	Wed, 13 May 2020 21:37:47 -0700 (PDT)
Received: from xu4.kyle.tk
	(2606-a000-111a-8d0a-0000-0000-0000-065f.inf6.spectrum.com.
	[2606:a000:111a:8d0a::65f]) by smtp.gmail.com with ESMTPSA id
	v144sm1898772qka.69.2020.05.13.21.37.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 May 2020 21:37:47 -0700 (PDT)
Subject: Re: b s d and orca
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
	<FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
	<b85fb8d0-a4ac-e83f-c82c-38a7886b6bdf@gmail.com>
	<8D288BBE-1C57-4394-AC55-653FD5B17442@gmail.com>
	<8e35d90a-e440-5198-5135-6f3e0a01bd40@gmail.com>
	<alpine.NEB.2.21.2005131357550.23538@panix1.panix.com>
Message-ID: <def8715b-a2d0-a40a-1df8-af05a4fc345f@gmail.com>
Date: Thu, 14 May 2020 00:37:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:68.0) Gecko/20100101
	Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2005131357550.23538@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Some earlier versions of mate called orca screen-reader and there was and
> maybe still is an f4 key that toggled accessibility on and off with system
> default set as off.

Not sure about F4, but if enabled, the key should be alt_super_s. The 
problem is that it appears to be disabled by default. Running orca from 
the alt+f2 window should work though.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

