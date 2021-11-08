Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09692447FFD
	for <lists+blinux-list@lfdr.de>; Mon,  8 Nov 2021 14:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636376551;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bMGaZPjPZhSQrlTJVWVsVuOtwR+Mo/Wd2B9FXZwiVPI=;
	b=LZXx4m77XglaX6FmjKr4D0VMi86wXim7s8Y1BRGJOwokECCbCb5gjN/XQ9DNnTObj+vsxp
	nO9VJJPN4LmU54ii6bpHbXlsddnJlWR/uILI/giQ7GD2EijS87MxduJ9kHyW9GAfmnoSOo
	TQWkgc+lM5eia4w/ggD183CwWgZKzIE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-qIAbDXdeM7ubZEduU7CrDw-1; Mon, 08 Nov 2021 08:02:29 -0500
X-MC-Unique: qIAbDXdeM7ubZEduU7CrDw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30E3DDF8A4;
	Mon,  8 Nov 2021 13:02:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CAB327093A;
	Mon,  8 Nov 2021 13:02:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E621257DF3;
	Mon,  8 Nov 2021 13:02:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A8D1Ot4016094 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Nov 2021 08:01:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F3541400E115; Mon,  8 Nov 2021 13:01:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF4A6400E108
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 13:01:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D51A8857BF9
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 13:01:23 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-419-1WUOM9WiN_mDlfn444jc0w-1; Mon, 08 Nov 2021 08:01:22 -0500
X-MC-Unique: 1WUOM9WiN_mDlfn444jc0w-1
Received: by mail-qv1-f46.google.com with SMTP id s9so11764388qvk.12
	for <blinux-list@redhat.com>; Mon, 08 Nov 2021 05:01:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=tAQNuaOmHYxi0fFMypn5Fw7Dsait0ilqEVjkbxoB2Xs=;
	b=rRKWpkeJGuOrkvKqR/Px3QdQI6GIQLL93PICmDr7oTYcnRlEmN91LR2tB0/BLgu2E3
	Otx3885IhJ7bOon7PAdXEzZmRCMItWepVQFhNOru8wkOfYFwHbC+eEF6X5OXaH19MqyA
	mudJLXV28JR9Ol8iieNHiGuhO51cJwC8Xn/8xCMQGa8SPF+924QU6lqZ6clQ3aZwVJm6
	Wlx+SH6B8DNveAUkV5/IcyrjJRNTjBxulIm7FOOmvYsHcIWPNJs1RTrQwhLBXFyvCXIz
	7T8N2ioozc6LAHo2IpOpz1I7QHhy4ynwtbT8VRekPvOsQd9d/1aTfpHlvjrd5J1z1IVs
	0mVw==
X-Gm-Message-State: AOAM5319Ea8UrLKbD5pC+AEWLZvnnw3yscoDpm2uVljPtybj3nMAkKyB
	iFRsqqmF1rZxddqQlOBOA74wpH4Om4o=
X-Google-Smtp-Source: ABdhPJyRT7mHJoGHW5BL2cz4nL3uCq5zIjNvh/+UiLzxd0mmheiKwSXaV1JWC0roLxIhKPdGgpCZUQ==
X-Received: by 2002:a05:6214:5002:: with SMTP id
	jo2mr76862860qvb.54.1636376481677; 
	Mon, 08 Nov 2021 05:01:21 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	j22sm10459736qko.121.2021.11.08.05.01.21 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 08 Nov 2021 05:01:21 -0800 (PST)
Message-ID: <417a4796-8e1d-796d-2880-e68670944543@gmail.com>
Date: Mon, 8 Nov 2021 08:01:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: anonymous postings was not so in the past
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.DEB.2.21.1.2111081126290.11628@willempc.meraka.csir.co.za>
In-Reply-To: <alpine.DEB.2.21.1.2111081126290.11628@willempc.meraka.csir.co.za>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The problem with that message is that it still preserved the email 
address, which would then be harvested by spammers. Every time someone 
would send a message to the list when its settings were configured in 
this way, the sender would see about 50 to 100 spam messages for the 
next couple of days, and somehow, most of them got around provider spam 
filters. This may not have been due to the email being in the From: 
header, but it's possible that some other vulnerability in this version 
of Mailman may have been exploited. In any case, it was determined at 
that time by the list owner that it would be easier to anonymize the 
list in this way than to update Mailman. I am on any number of other 
mailman lists that don't appear to have this problem. I do get spam of 
course, but most of it is trapped by spam filters and is either moved to 
a junk folder or is flagged. From what I've seen, the version of Mailman 
running on this listserv is woefully outdated, and so just changing the 
setting as you suggest would bring back the problem we had that resulted 
in the anonymization of posts. It would be far better if it were 
possible to not only change this setting, but to also update mailman to 
a more secure version.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

