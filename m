Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 524F8375FAC
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 07:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620364948;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jQ9w9lWBxSHM2Dqto2N5xCnyHvfTdi8l17GZPWIoEng=;
	b=i5N0vB6NX0jg6ntQrZQAqojsEAelD3HGnK44kcXIDi+4D6zAHjSRFC3f98L9VF4yvPm//0
	WOW9MVNkCpTmopAKEPRNITo7jFSK+JT3zNCLIwEvr1BRtq/jFSjns3GK21xE7ESxvxed1i
	8mhAYjmFXRoJ8C2OP6euWDe8TeeCAAs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-bLmZVKzYMamG90_aY8vddA-1; Fri, 07 May 2021 01:22:26 -0400
X-MC-Unique: bLmZVKzYMamG90_aY8vddA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 78486803622;
	Fri,  7 May 2021 05:22:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB87B63B8C;
	Fri,  7 May 2021 05:22:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D95261800BBE;
	Fri,  7 May 2021 05:22:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1475M8qV011335 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 May 2021 01:22:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CFAAA2167815; Fri,  7 May 2021 05:22:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB1DB2167814
	for <blinux-list@redhat.com>; Fri,  7 May 2021 05:22:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F9A7106655F
	for <blinux-list@redhat.com>; Fri,  7 May 2021 05:22:06 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-196-lw6eihtaPtay1jaPFNX-gA-1; Fri, 07 May 2021 01:22:04 -0400
X-MC-Unique: lw6eihtaPtay1jaPFNX-gA-1
Received: by mail-wr1-f46.google.com with SMTP id d11so7800000wrw.8
	for <blinux-list@redhat.com>; Thu, 06 May 2021 22:22:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=dgiNrcHc7r0RWJ7w+SCYGjzHLc9OGrzCB2qabdpfrYA=;
	b=iD4aTD9ImalGDOXs8cEr9Y714zCEmKKjnq0/a+2FxFi4b+uVBuvCEHFZpMhhTmCXeL
	PfyYE5mh7HN19z9Ck92Cd29XJhFt6mbjp2LEYUVxNZ7543sp7xar4bjpmJIhn86n5UPh
	+K3DKQptDvC8sMbSIDg05olezuZ9/fJ3k5sGTegIQQeeyIp5RrBPLLEHbvbu3aJtfJrS
	bId+nolHkcQtCi6Pjl+/7qzMvguUvf0N0eAYJwDZKcWE0ANpSwt/qRjoZ8rhiPj31Rf5
	Iz+8SfTtETKfgqz7a1Ay/XmyG4WY/LAY4rYFSjhz4rWHISyENJzSUDgJ7SovzvL0Z8ED
	sD9A==
X-Gm-Message-State: AOAM531zP825SgFT33QDK7R7cySV4gpS4LtlszWR3vqTF+fYDfMJ8pM+
	ebnGBp0njsxgPLZhp/X9EkETCZRiFhvPIg==
X-Google-Smtp-Source: ABdhPJw4URgg0C3OgI2c5xr8ihJ0Hl73HxG9HIkPYAj3Oo5Zqbxw6TuNfrthD6FJKQSdyEGkWTg1Dg==
X-Received: by 2002:adf:dbc2:: with SMTP id e2mr9529009wrj.398.1620364922502; 
	Thu, 06 May 2021 22:22:02 -0700 (PDT)
Received: from [192.168.1.6] (net-188-218-192-192.cust.vodafonedsl.it.
	[188.218.192.192])
	by smtp.gmail.com with ESMTPSA id l14sm5551643wmq.4.2021.05.06.22.22.01
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 06 May 2021 22:22:02 -0700 (PDT)
Subject: Re: No Talking GDM in Fedora 34 (workstation)
To: blinux-list@redhat.com
References: <CAGz84J+eDUuaXq-xrdVuS8XhWYMwoVcByhqrf9CuVvObm744QQ@mail.gmail.com>
Message-ID: <6e26ee71-f2b1-9b33-43a3-4942dafd3786@gmail.com>
Date: Fri, 7 May 2021 01:22:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAGz84J+eDUuaXq-xrdVuS8XhWYMwoVcByhqrf9CuVvObm744QQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello there,


For it to work for me, I had to disable selinux

Best regards.

Francisco.

On 5/6/21 6:14 PM, Linux for blind general discussion wrote:
> Oh, and I had to use an ocr tool, on my smart phone, to get through the
> initial user setup, too, but, how do I get the login screen talking?  There
> appears to be sound; the volume pops play.  Maybe the 'alt+super+s'
> shortcut isn't bound on login screen?  Maybe some gsettings thing isn't
> set?  Whatever the case, I cannot get a talking login screen. Since I'm the
> only user, it's not a huge thing, but, this should work, as it has done, in
> prior versions.
>
>
> Thanks,
>
>
> Dave  Hunt
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

