Return-Path: <blinux-list+bncBCVPTHE7K4IOZFUKVIDBUBC56ADFM@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 423927DE561
	for <lists+blinux-list@lfdr.de>; Wed,  1 Nov 2023 18:31:26 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-67012b06439sf860716d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 01 Nov 2023 10:31:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698859885; x=1699464685;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywVIJr8mdRBcgl8FsVkBu2LCMnVUzEWpze3IN2FErZo=;
        b=A/M4qUKYfgorlTg7/KJWKsublPkzDyBQaiRKPrZuslC804ZRB6tIEgXKza8OPo6bRq
         kjQ5QZ75PueYxgxg7FvG9cewHio5756DbH+RSYzYD7AKAHBm6Gzoc9DiQ1838MBTYud9
         7WpFAjduiJadp275V+k6T2kQgm6aSr8vp/Mp/MyAj/5XqR6SsCLiUuuuwdLh4i2xxMGs
         G0az73mecfHlAWwZDjhc+5mh+4BS1BZcB4IMDQ6RMj7nL14tkhY+RzBrfjHH7GuuiCBj
         uMvz0kKOteyCpVx5OWpZ/pN44+21AyRY7nNPrCs0dcKfqIZB0o+/Ir76M0hw19D/7qWD
         wwsg==
X-Gm-Message-State: AOJu0YxwyQyA66nqZwYi7EKwauAw8c6J/v6Lus2et4uF3RfpD+0+aIQF
	l9Ne1xsf0VIUanoccs7ESt00jg==
X-Google-Smtp-Source: AGHT+IH/LlYqCWUb37HpKo1d6ASA8IQEmwHtJwcRTA1dlkZKmwk0gldl1x0POrTE1L23s0pOzZyBfg==
X-Received: by 2002:a05:6214:2a8b:b0:64c:9d23:8f55 with SMTP id jr11-20020a0562142a8b00b0064c9d238f55mr18669387qvb.58.1698859884831;
        Wed, 01 Nov 2023 10:31:24 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:e703:0:b0:65b:2cc9:5f15 with SMTP id d3-20020a0ce703000000b0065b2cc95f15ls74666qvn.1.-pod-prod-07-us;
 Wed, 01 Nov 2023 10:31:23 -0700 (PDT)
X-Received: by 2002:a1f:2a93:0:b0:49a:466c:199e with SMTP id q141-20020a1f2a93000000b0049a466c199emr14741114vkq.2.1698859883739;
        Wed, 01 Nov 2023 10:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698859883; cv=none;
        d=google.com; s=arc-20160816;
        b=tCDwOdaiznOuKV+PLtRUNfrDWaNPL6+WcI3Khs09Yj0+u1/1yLSLDjdSej8AS677xD
         hd1TWYrXWR8EPLyPdw+ZB2BnOqnFPGI3iFWt3qvJlcVV0sjXSELE227qgTDLTzjzL0ob
         1FB6jLOmNd9F7MCu1dIGx3HJiMrh/qXK7YBvQNXCzDrB6nckDS7HyqyZ8ySy/yd58FYB
         4RCAxAiiJG92jBNv1WYITAvDqiP/IlsR7cwxnF9k7jiuleK1x714QeIqfGps5zda7c2O
         rMpZ9NE571HIM++OYzgH8oDhLcbq2Wvtp0MmocndJ0fEZOg0UYllpT7l4hILmM27ghjX
         tVOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=ywVIJr8mdRBcgl8FsVkBu2LCMnVUzEWpze3IN2FErZo=;
        fh=5BGpd9k4y8F62sA2rfcSjN7zgK8lTBpG/Wr3HsCq4Ec=;
        b=mTK53IEoeh99XqLHm5oPoknKgMvC1pzZVMeGNSAjD113DQ5nlvHnAlpJC58txUz762
         3xmEnXe4jCVMSqlRTuht1MS9o1ggipaxXnnILrDh/MWkPMMFcArKVhzqELoiZ2qt4Iji
         R7oXkvKGqQQoNdacgD7xislznl4uKr894v0xyCqO2zxXQ2iLZrCFJ+RS0cSDubMzXjBG
         Cdx1Rzs5y4MZQlW0NwINs+IqAfImalw63gLJqh7+Ljn/vRG32q7ZtU5UhlhwwpZOIyyA
         4oIkn1FoXcsFilnP46a/x0tUqL4wyQ/b15d34OsOilNiqRA4zPHRMHiURl7E1rO+iu4p
         4FQQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id dw26-20020a05620a601a00b0076dbb17e788si2935023qkb.721.2023.11.01.10.31.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 10:31:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-196-Zfkam_ZJNoeluu0_N6vr2w-1; Wed,
 01 Nov 2023 13:31:21 -0400
X-MC-Unique: Zfkam_ZJNoeluu0_N6vr2w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DCE073C11CC1
	for <blinux-list@gapps.redhat.com>; Wed,  1 Nov 2023 17:31:20 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DA89DC12912; Wed,  1 Nov 2023 17:31:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3300C1290F
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 17:31:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF3F538143A1
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 17:31:20 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-119-RLgIYuouNNqPcfjNqxC4pQ-1; Wed,
 01 Nov 2023 13:31:18 -0400
X-MC-Unique: RLgIYuouNNqPcfjNqxC4pQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3A04440508;
	Wed,  1 Nov 2023 13:31:18 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 01B181001B8; Wed,  1 Nov 2023 13:31:18 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 017381001AA;
	Wed,  1 Nov 2023 13:31:18 -0400 (EDT)
Date: Wed, 1 Nov 2023 13:31:17 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tim Chase <blinux.list@thechases.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: simple 7zip extract command?
In-Reply-To: <ZUJ-iVvXdYAijXS3@thechases.com>
Message-ID: <Pine.LNX.4.64.2311011326200.3176199@users.shellworld.net>
References: <Pine.LNX.4.64.2311011208480.3174618@users.shellworld.net>
 <ZUJ-iVvXdYAijXS3@thechases.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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

Hi there,
Given the file  is of wordperfect from a reliable source, I feel confident 
it is fine, having no desire to list the files in the program.
so, I can run
7z t c:\corel\corelw62.7z

  and test the archive integrity,
then 7z x c:\corel\corelw62.7z
to extract the file into the corel directory?
thanks much!



On Wed, 1 Nov 2023, Tim Chase wrote:

> Tim here.  The command-line iterface should speak pretty well.  You
> can use the "t" command to "test" the archive's integrity
>
>  $ 7z t my_archive.7z
>
> or the "l" command to list the files in the archive before extracting
> them:
>
>  $ 7z l my_archive.7z
>
> Once you know the contents are what you expect, you can use the "x"
> command you showed to extract the files:
>
>  $ 7z x my_archive.7z
>
> The output is a bit verbose with some copyright info, archive
> self-integrity testing, and some stats about the archive. But all
> the output should be pretty speakable.
>
> -tim
>
>
> On 2023-11-01 12:12, Karen Lewellen wrote:
>> Hi All,
>> imagine some here use 7zip to extract files in Linux.
>> I have an archive of a program that I want to extract, keeping all of the
>> sub directories in tact.
>> The file  was compressed with 7zip, that I have not used before.
>> My google  suggests  something like
>>  7z x file.7z
>> will do the trick, but wanted to ask as I am unsure how well the program
>> will speak.
>> ideas?
>> Thanks,
>> Karen
>>
>>
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

