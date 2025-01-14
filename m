Return-Path: <blinux-list+bncBCVPTHE7K4IJZJ43XQDBUBHFIFGS2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com [209.85.166.197])
	by mail.lfdr.de (Postfix) with ESMTPS id AE86DA112C4
	for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 22:14:06 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-3ce7c75cae9sf2021825ab.1
        for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 13:14:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736889245; cv=pass;
        d=google.com; s=arc-20240605;
        b=gBp5WnLsJjX7eg6TX/TyitAqNrPPZAwrI35XUP01lysUOb3as++VslTPFQwiiFJKd5
         /5pytGWZEjlSMufz7N21X/bqxFNia7NXG+g7iZfSIRacBNrPnyaQ5AvjLMW5j3yQwLse
         cyO7jmk9xj/kfNySY4qoIdlNHI+Hjv3nfS1+mlyd/oj0U4gH4sUm3LQvFVLujMZd3tqx
         WWXYfsgVr6ktB2/cgwawZsaf4t0BYzjHBM3mqZxiuBO8XRpWzVyquJNaJ9H0lZRZ+i4H
         eaB9hKQSZe5t67TNTIHZ4ITwg/zhoMojd2Ww/9F3ilMxAkYlL5P94RO5zMO1R8uON6QT
         1LWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=VgGprXEkcHvfGCsxEIOvyjqcm5h4JwAmvaid2sjjmwY=;
        fh=Y+TM7ncQgSZIvK28RUQdZO3LhOnE2i8fIMtZ4fbSspw=;
        b=Rm0y6Rxqw65RfyhU0kjURxNrPjGIG++bug84rL+9qE0RbOtGJmUIeo4GHGEwdvc/5M
         +2Vzg6xNMJYAUVWX9OmKgXRJfFdtEpAExw0bL4EmLYqh2Cy0Zm4seri9i8WNt8Ib1QXj
         ZTwIb7D0JHQ2WAGVG812bQO+AiGTYjkJklvKaHQToWH7PoNyEMj2UF7YCo4zeOSvcUKi
         c+JYIvCMTUfDFqjAlNb27g4kcYaNKT0c0zvLw78TJFsYbDndSEcYGGoKiJgfjoXWVQRL
         S1VoZD3oQcZOqkeVrRecML+f0KB4XD70KHSEC/TpcasUN+c+KUdHrTV7akxwv2XC6F/F
         NYXg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736889245; x=1737494045;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VgGprXEkcHvfGCsxEIOvyjqcm5h4JwAmvaid2sjjmwY=;
        b=FQrpBxQ8+fcma6LQdiZJO7pHHAzWrhoh3Axxjk/NL9VplWlXSsDbLWoBqetb1PP7Gp
         ILWOECA/TTL6Ru79HcdJMYT2TKERbJVHXKbKTsKkxgjOuMQTDwOuB073YmgTVCeBWZTn
         tLE+srDAjOeXR17ohCY4TkVqLSIDc0Ty2LKR4M5mSAUfistHjiezm4M3nhyXTcVCJDhz
         NDr0dGOUj4PJQrjhFWzlZLZw4n4R5kC95+3MCUZDSvZpnREpJxkTd5n5WegXB6tLsEKI
         ghnQiy37j+yDD0Yh8L+qgCLbW5Sn/EzmAsnjQ8kF0QZb45Ja4q8B4PVUpyvsabB0PE1O
         /d0Q==
X-Forwarded-Encrypted: i=2; AJvYcCUYqLwd/Gk3S2mZP7Y37MBPtqsoWa2j02zW4oXohd7SZi5PkFldS61Qt/H2Tp+KNmMQddy4jA==@lfdr.de
X-Gm-Message-State: AOJu0YxV1xtiaZ8/cnBj3deiQgr1cscBDAOFVfmxpjMXU4+Wp4eArtaP
	5o4e4cm8Zv2pD3mKo/FCVhShniGPFdfgjq38ApalsBjrDjf6CvNXtVv31+I2u9g=
X-Google-Smtp-Source: AGHT+IFdigrHDn1ciVyuFwGGDHJBDCnoVPx8J9xPVb5yxyCMlG15nCN7xzDh5tbfY7F1EytE5yvnJw==
X-Received: by 2002:a05:6e02:164e:b0:3cd:bcbf:1091 with SMTP id e9e14a558f8ab-3ce84a3f2d9mr4809655ab.10.1736889244963;
        Tue, 14 Jan 2025 13:14:04 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a92:7f12:0:b0:3a7:cebb:5bd7 with SMTP id e9e14a558f8ab-3ce475dca93ls21272695ab.1.-pod-prod-00-us;
 Tue, 14 Jan 2025 13:14:03 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWtAUcpIPKNMrHDZRxncNTHRdHPz/OppKSBo8kTtNSJLeELVOQ2xOpN4Fj2tpygqSuVeddSyFh/GJE0ZQ==@gapps.redhat.com
X-Received: by 2002:a92:c544:0:b0:3ce:3565:629 with SMTP id e9e14a558f8ab-3ce8497a18fmr4363505ab.1.1736889243761;
        Tue, 14 Jan 2025 13:14:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736889243; cv=none;
        d=google.com; s=arc-20240605;
        b=C5gapo4Bp1KG/eMGCcMxPMzOofk+5fwyG7+Zp7ihY8WVVNS3kXuw61kRYK85sY6SlY
         jQzZLnW/+ECXBzXb8Dl1vrbh3IuAYBYOM6DnAa7oPccwaVqgDldgSp6FIxVYebPpH05C
         jPj3TkrTYCAF/P+7OKEoliHXHit8TObnLK4jNB1Gn6uXTf8gHV33AGa04PlvBhnsturt
         QYQGkY8DNzdAjzrq7sOhHU4Hq/GwjQ0Thuopx4KHxyRCIUDp4sa08IQoKiVaOTDyoJOP
         JA7hu9gz5vIoLSGz/6tLWX4+RiPcveoRFAkOmvtybOrXs4G09ybqeX4pkuoYK8BczrDt
         Z+xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=VgGprXEkcHvfGCsxEIOvyjqcm5h4JwAmvaid2sjjmwY=;
        fh=YIemtfehXvZPL7gWuh54UL3aLC+edVhD+3qxciBrLwM=;
        b=bWMg32ghQU8VjEUhn5wPBhJI4tq01a+un9EUlsSwL1n29cCwRpB8h1MBg5bxnOM5w5
         1jQqefzdbRtjZGmCh4Gxc627Hl5H1wrAU/9E4jRUgxL6VmsqX92ZL5BX4kuo9teD130h
         8OwawMiM/Sxwpz3iqxe+jeNSlYOVbozQP+rUVohY1ud8YXclNDSuIdvkw1FWlaFOzM/0
         v+7IlFFkLoKzSAp8sImvHbbHAwmZydfpOj1hs3GAOBr2xtrvxxlb6eYT2pDEXz453Z9E
         cIZvRcprKC2zAKrdli3Cx3oMnnQ7JHmI3TBfHEnSbYX01oaqgTZxaleYzPA4zfOMF78p
         Gy0A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id e9e14a558f8ab-3ce4adbc634si66232235ab.55.2025.01.14.13.14.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 13:14:03 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-331-_uK_c5WePKKV8NEfRvD21A-1; Tue,
 14 Jan 2025 16:14:00 -0500
X-MC-Unique: _uK_c5WePKKV8NEfRvD21A-1
X-Mimecast-MFC-AGG-ID: _uK_c5WePKKV8NEfRvD21A
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7B0BF19560BA
	for <blinux-list@gapps.redhat.com>; Tue, 14 Jan 2025 21:13:58 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5770A19560AD; Tue, 14 Jan 2025 21:13:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 54FF719560AB
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 21:13:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E648C195608F
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 21:13:57 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-484-u6i3jUiNMASwhjlp5cmxXg-1;
 Tue, 14 Jan 2025 16:13:55 -0500
X-MC-Unique: u6i3jUiNMASwhjlp5cmxXg-1
X-Mimecast-MFC-AGG-ID: u6i3jUiNMASwhjlp5cmxXg
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 93EF340508;
	Tue, 14 Jan 2025 16:13:54 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 5491B1001B3; Tue, 14 Jan 2025 16:13:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 5425410008A;
	Tue, 14 Jan 2025 16:13:54 -0500 (EST)
Date: Tue, 14 Jan 2025 16:13:54 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
cc: Didier Spaier <didier@slint.fr>, blinux-list@redhat.com, 
    orca@freelists.org
Subject: Re: List problems and a suggestion
In-Reply-To: <fesoxhx7g5kob6t4gmu54mwcglavzqg3hnvn6nbxm7om4phbfo@aclcfl3xj4op>
Message-ID: <Pine.LNX.4.64.2501141612120.1435291@users.shellworld.net>
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
 <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr>
 <fesoxhx7g5kob6t4gmu54mwcglavzqg3hnvn6nbxm7om4phbfo@aclcfl3xj4op>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: C0VMYPjiuNrCMZfYiO_wyiu0F--cBmudtj6HWYkUpt8_1736889234
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: LrAF_6P9zMEkYZBQxjQ9QWVqJmhEVy83Jd7OQST5Ogw_1736889238
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

Well Chime and all,
What made me giggle was following the link providing my email address, 
then being told I appear to be a robot..go back and try again.
I suppose there is  something hidden here, but just sent an email instead.
Kare



On Tue, 14 Jan 2025, Alexander Epaneshnikov wrote:

> Hello. blinux@freelists.org created and ready to help you communicate.
>
> you can join list by sending email to blinux-request@freelists.org
> with 'subscribe' in the Subject field OR by
> visiting list page at <https://www.freelists.org/list/blinux>.
>
> Online, searchable archives of the list are available at
> <https://www.freelists.org/archive/blinux>.
>
> I would be very grateful if you could forward this message to any interested communities.
>
> On Fri, Jan 10, 2025 at 11:00:58PM +0100, Didier Spaier wrote:
>> It's me who suggested to create another list to replace this one:
>>
>> Let me quote my post about that:
>>
>> On 06/12/2024 22:36, 'Didier Spaier' via blinux-list@redhat.com wrote:
>>> Thanks Chime,
>>>
>>> unfortunately this information is rather old, thus many of the links it provides
>>> are dead.
>>>
>>> Unfortunately the blinux list is only partially usable and provides not recent
>>> archives. Fortunately the is one here instead:
>>> https://www.spinics.net/lists/blinux/
>>>
>>> I think it's about time to cease to use the blinux list that seem to be
>>> under-managed if not no more managed and replace it by one that could be hosted
>>> @ freelists.org as is the orca mailing list, which is free with good records.
>>>
>>> @All, what do you think?
>>>
>>> Is there a volunteer to register then maintain a list like blinux@freelists.org
>>> replacing blinux-list@redhat.com?
>>>
>>> If no one volunteer to do that within a week or so I could do it, unless someone
>>> objects or have another proposal.
>>
>> Then Alex volunteered:
>>
>> On 07/12/2024 16:13, Alexander Epaneshnikov (aarnaarn2) wrote:
>>> Hello. I think I could create and administer such list.
>>
>> But he did not create this list so far to my knowledge.
>>
>> @Alex: please tell us if you still intend to create this list.
>>
>> If you don't, I will create it next week and post a message here and in similar
>> lists when done telling how to subscribe to the new list and manage the
>> subscription which can be done by emails exchange without needing to use a web
>> browser.
>>
>> After that I won't mind that someone else (possibly Alexander) takes over the
>> ownership of / admin this list once created.
>>
>> Links to provide more information about freelists.org:
>> https://www.freelists.org/help/
>>
>> Cheers,
>> Didier
>> --
>> Didier Spaier
>> didieratslintdotfr
>>
>>
>> On 10/01/2025 16:46, 'Cleverson Casarin Uliana' via blinux-list@redhat.com wrote:
>>> Hi, I'm about to retire this e-mail address which is subscribed to this group.
>>> I'm unable to do any operation such as unsubscribe this e-mail, subscribe
>>> another one, or even turn vacation mode on.
>>>
>>> I recall someone suggested to create another group to replace this one. That
>>> would be good for me too, though I believe another option is you all subscribe
>>> to a group like Stormux at groups.io, and use that for general discussions.
>>>
>>> I prefer not to risk creating an alternative group, because I've never
>>> administered a group, so I'd probably be too amateur at that.
>>>
>>> Regards,
>>> Cleverson
>>
>>
>
> --
> Sincerely, Alexander
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

