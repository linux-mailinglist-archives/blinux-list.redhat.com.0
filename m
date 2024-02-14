Return-Path: <blinux-list+bncBCVPTHE7K4INNBVSVYDBUBCKEFZ5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F66B8544A8
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 10:09:44 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-42c70b8e409sf11932661cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 01:09:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707901783; cv=pass;
        d=google.com; s=arc-20160816;
        b=cePdA0Y+i5eWcDHi1Fp9Qf8YDmNcsI8AM4SAr9AmWR6U7jGsg8HaIevrPUjK7kZYrJ
         2cjETekRLAy5zQ8fhA64jzOmeIaBY3AxrLUU4jGCe4WA1RpzH7aRC4UKE8enP8UCJpnv
         d0CmHYrUnt5l3kdDstv2rHUdCklk1C/05boesKeR/mjxyqUtokq2DlaobrkuHU5ZwQX7
         NnvDEJipzBnh5t4BolyjVjzit1LNH3zsEQTuiJt7corGhdfjmj0LGcYGe8TJgrgggwwP
         EleNKfuCy7x+VA105pxl/1vwRgTK+a8Ia4ZVU6E9GQNQrKusSwCeH3wsiYKpCP8TwKPV
         9CRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=UQFA56pO4RzZQ0yHkdl/0tYAv9CGHMHZfP6AkxO/sj8=;
        fh=xQJy5iiZs4bTb8X5RFBoDdEKSwSLCiHNi/QBM+ax1V0=;
        b=KrRGnxsV+mRb6Un/PfzGKNN3xo3GT1Q25c/OHfBBpTF46wWM30RlhOVSwgPIPokfkQ
         s2OptYsaC6RG+wkgs9u2lUd6HwXKfdTXxUw/hOZCBFaV7PbQdXyhHzLNhvxeW7fU9bmw
         jUMUPr/Be845ww3X+PlPSCerJhJbgJKiueFIMwnEAcxkj7YsqyzfLUbYMWTCQZO/2w2p
         /QhVcaH88JGdyn4UUENuVgBG7eEuAI51HDFsTUTWzHf/IEW8Leo2hbj8jvAWYDcNdzzM
         JgFDGxWoZMaY0qR1/P53IN2Zn84sf7TCGDwx7Xu48/Zv5+THSuob557f2JFQVi6y2It3
         HlLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707901783; x=1708506583;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UQFA56pO4RzZQ0yHkdl/0tYAv9CGHMHZfP6AkxO/sj8=;
        b=GDW0YAE9K2L5M3osHsNFIeN7I0/E33kECO5N219dkmhPotwyy0bj+KuyDg/jE5Lw4a
         7ehP9X8ksH6SLV5oTB85DVGeQDAek7JCXC3dL6NM/bCDhFLs9V3jPlK/hVe20u4ZC9dT
         HV4EtUZ0lbTKESTj28VfjOA+ghG4+tpz2G1e/ejrIyE+8alAT1RLHjWEqzjLV9+dJ+yz
         kdt/g+yFfIhGQF1nOSQvNSnVdF/Vi77J0IlIYObgXtTb1ZAIpwkwrk8cPDAY+njPCS2/
         o8seS2QVTKOBtA3mxUKjv5F/lDojl7ztUHl5s4qWBnh3bPYEM308Z9sEbKSvpm0xH/0v
         mPwA==
X-Forwarded-Encrypted: i=2; AJvYcCUc2NmSQBsuk8ncQlqxrY3QR0W9A1OMKlKvjKWZ1bML9hc9KsHWhA5az/To/2rXNji3+mE9kYAkaJI0DzHLp62NFIreNUpBKcCr
X-Gm-Message-State: AOJu0Yw92yeQ84rW/IQ8+TG3mgfxkCucUtIf6bwK6cwtz7nP/EURPF69
	GPSsos8UQZag9XqduzJi883WW/dRv6D8/PTAvfu0pflNoVTaVZEEi3T6MhP7vos=
X-Google-Smtp-Source: AGHT+IFAhcc0Ol2GvufPWWszm+YS2s5ePzi2oJH9JdvnZyLscttMRl5chhvsuPqtTfFa9gJwTeIPVw==
X-Received: by 2002:ac8:4e88:0:b0:42c:53ec:a8f6 with SMTP id 8-20020ac84e88000000b0042c53eca8f6mr2716713qtp.28.1707901782808;
        Wed, 14 Feb 2024 01:09:42 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:92:b0:42d:a963:7ef8 with SMTP id
 o18-20020a05622a009200b0042da9637ef8ls106599qtw.0.-pod-prod-00-us; Wed, 14
 Feb 2024 01:09:42 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVz9kYpxGuo1u9D7dL4xyiEEbkA3cC2O325QicTqUGFWBl6Z2bhyQCleiy/43+JqALRxgVmgJTfjIAz+EgdZ5rWeKW55JMV+LEs0IkG
X-Received: by 2002:ac8:5909:0:b0:42c:7594:41ae with SMTP id 9-20020ac85909000000b0042c759441aemr1925307qty.9.1707901781971;
        Wed, 14 Feb 2024 01:09:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707901781; cv=none;
        d=google.com; s=arc-20160816;
        b=Hg4CcxkztZxFewZJh+bSA92LFWAclQqK4L3pKRtC+DRuzcPRCijtYzNK0qqYnUPeXX
         DO551kdg7dP+SRFe6NR04PpRbwI6CUaqL5JGh00uGJlnNCZMk0SzTzDCZL/UdjZPWSnB
         U2jPZw/NFQUvak5UXVrJ9Nq7+tzw+olxvpNWmisrV2L6iOS71zT+TIF/S4nqGUP5Dz2n
         VdAv85c4bWQDAD6PjdIDymul9Zytq1RHGM6c2vA6CW2/IvYVIve9qjK3pYAkmbTrBSHD
         xXfjnwrddt99kZlYtdawCdD6SODLKLE7pGaO0CLkTeTxsHjfYi+nSNXohyo7tcDHoiGP
         gOhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=UQFA56pO4RzZQ0yHkdl/0tYAv9CGHMHZfP6AkxO/sj8=;
        fh=Vdrlr/aMF8i8lQgBzoBMBAFEccwQavS+pwIQCvr3Njg=;
        b=VZ8wtiLR+xVv/JT1RlTdLFzBYxzAbYhh0C4bG1wlV7oabfHlfJJzLueM6OOe8QLf2L
         A93LpvAKivlzJ1RxJYMpVCt/giFsygvHP5j8njl8EGpFX4lc46rh2BBR13D91x3bCMSD
         EE6JNGtNpagldtokwnRS+PoCqNzc2QGKwoYpTc1S0fwwKP3anm5SRwxq6AH2XnEymp8/
         XvwI1u1DeUQmR2D8Gr9w0mMkcjjh8wqX74wZ0I72W1S0uC2tFkaLyjbcoKPt7tb2FZRV
         gr5bsJX2CZ8DG0in8XV9XI4ZZn0mWY2gOVkdJtk/ReaEz9cFG5G2Tk2byilv++8WNUQC
         g7dQ==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Forwarded-Encrypted: i=1; AJvYcCX2Sqsu6mvyn7gWXiUlgHjgnZ5ksX/I2/Mq0KuOvHEah+2jlrxq15W+bAqCkZuCO+gcYGzDzEFBCSM4S/zGCL634huiGCHVllhzmrhg
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id v16-20020a05622a145000b0042dac9d4291si4077587qtx.409.2024.02.14.01.09.41
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 01:09:41 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-321-IoB_hfJxNUOpVnel2b8p7w-1; Wed,
 14 Feb 2024 04:09:40 -0500
X-MC-Unique: IoB_hfJxNUOpVnel2b8p7w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22A613869148
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 09:09:40 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1F91F8077; Wed, 14 Feb 2024 09:09:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFFF01BDB1
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 09:09:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03CB73869141
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 09:09:39 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-691-dt0HYlHSNRiD5W2QOl7eCQ-1; Wed,
 14 Feb 2024 04:09:37 -0500
X-MC-Unique: dt0HYlHSNRiD5W2QOl7eCQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3828940508;
	Wed, 14 Feb 2024 04:09:36 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id EAAD7100163; Wed, 14 Feb 2024 04:09:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id E92BF1000A5;
	Wed, 14 Feb 2024 04:09:35 -0500 (EST)
Date: Wed, 14 Feb 2024 04:09:35 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh command line question?
In-Reply-To: <0320719e-de90-e7e7-92d9-ebf20501332d@panix.com>
Message-ID: <Pine.LNX.4.64.2402140408100.708632@users.shellworld.net>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
 <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com>
 <Pine.LNX.4.64.2402140028230.706690@users.shellworld.net>
 <0320719e-de90-e7e7-92d9-ebf20501332d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Yes indeed!!!
worked  perfectly..weak with relief.
thanks so much,
Karen



On Wed, 14 Feb 2024, Jude DaShiell wrote:

> ssh-keygen -R hostname
> uppercase that r and then it works.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Wed, 14 Feb 2024, Karen Lewellen wrote:
>
>> Jude,
>> I have a question.
>> i did run your command
>> ssh-keygen -r hostname.
>> Listed several keys associated.
>> However the new attempt did not let me save the new host, I have seen this
>> message.
>> Instead I get the error
>> hostname key has changed and you have requested strict checking.
>> I am paraphrasing.
>> Is there a way to run the ssh-keygen or ssh command without the strict
>> checking request so the new one can be saved?
>> Indeed things are in the known_host file as Chime suggested.
>> Worst case, I suppose? I can  open known_hosts in nano, which defaults to the
>> bottom, and put the key there..but dreamhost will have to provide that.
>> Thanks,
>> Karen
>>
>>
>>
>> On Tue, 13 Feb 2024, Jude DaShiell wrote:
>>
>>> First delete the outdated key since it won't work any longer, then login
>>> again and a new key will be added for you by the external server.
>>> ssh-keygen -r hostname
>>> should get that first task done.
>>> When you log in without a key you'll be asked if you want to trust the
>>> system and your answer is yes.
>>> That adds the new key and you're on your way.
>>>
>>>
>>> --
>>> Jude <jdashiel at panix dot com>
>>> "There are four boxes to be used in defense of liberty:
>>> soap, ballot, jury, and ammo.
>>> Please use in that order."
>>> Ed Howdershelt 1940.
>>>
>>> On Tue, 13 Feb 2024, Karen Lewellen wrote:
>>>
>>>> Hi all,
>>>> Will aim to keep this simple.
>>>> is there an option with ssh from the command line that allows you to update
>>>> new keys for the known host list?
>>>> I ssh into my dreamhost office workspace from shellworld, as in
>>>> ssh email@email.thingy.
>>>> I provide the password, reaching the dreamhost shell structure for the
>>>> domains
>>>> they host  on behalf of my employer.
>>>> dreamhost moved our services to a new server, changing our ip address, not
>>>> an
>>>> issue, but also changing the fingertip keys <hope that is the correct term,
>>>> previously saved  for my access from shellworld..who seems to use a strict
>>>> matching process of some kind.
>>>> My hope? is that there is an option that tells ssh to update the
>>>> identifiers
>>>> used for known hosts?
>>>>
>>>> Thanks,
>>>> Kare
>>>>
>>>>
>>>>
>>>
>>
>>
>

