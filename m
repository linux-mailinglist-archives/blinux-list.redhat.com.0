Return-Path: <blinux-list+bncBCVPTHE7K4IMHMELVMDBUBH65PGHE@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E557F916E
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 06:31:48 +0100 (CET)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-5cef61289fdsf14852227b3.1
        for <lists+blinux-list@lfdr.de>; Sat, 25 Nov 2023 21:31:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700976707; x=1701581507;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bFw9Gkkvg0BTOd2nWxZTZjO07LxfydSrJSyVMxw63hw=;
        b=kC0PqDYQfzhYfd9PY1B+M6hRU6SfnConDa1XRnDwB2JjzNcJklO+OAwgV3bWd2dwY8
         1/vPAUEk8Gzlau/Iz10dLndLDtvijIepwuVtm9dIdY20YtiGrt2Sx3vwEkB3SW3UzNvz
         aRmHRNDvOYImXqlaWCN/9dD+qf8i/uPDXlySvkvJ3FAt29UECfv2tCMEef+L8Ktc1Z2P
         L0ySgSTE/nWJ8zTUnR5I8++s1FKGcABgJZK4fzkWggP7CPiRFiegxe7f0V1RsZJxsnrK
         8Xm4BHsbmsercyzyRVXnacNzmWeY3uiIu1winY00qCNAnVsXkIXkKzX8VFXwPfx9CrVF
         iMlg==
X-Gm-Message-State: AOJu0YwZHbAqFKTHv2Yg1RK1gTkFTtCaBDsC2lIvqfY86PPIvlIHDf5R
	Gzz5zT1fA49oGfgW1Bwjm5sJMA==
X-Google-Smtp-Source: AGHT+IEKKu1UXPncxeOHpay+o79GOXMD39UXBNEEtQnHw62GdIOvMoyZQogFa2OZEMpmiGPvQF/53w==
X-Received: by 2002:a25:9290:0:b0:d9a:d184:8304 with SMTP id y16-20020a259290000000b00d9ad1848304mr6530759ybl.35.1700976707501;
        Sat, 25 Nov 2023 21:31:47 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5e8f:0:b0:675:bacc:9c08 with SMTP id jl15-20020ad45e8f000000b00675bacc9c08ls1091875qvb.1.-pod-prod-05-us;
 Sat, 25 Nov 2023 21:31:47 -0800 (PST)
X-Received: by 2002:a0c:f606:0:b0:67a:2431:39de with SMTP id r6-20020a0cf606000000b0067a243139demr5512930qvm.50.1700976706847;
        Sat, 25 Nov 2023 21:31:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700976706; cv=none;
        d=google.com; s=arc-20160816;
        b=E+Iq+oikEd7LV2zp6A9FY3MU31XhmuRN/DD98mJ1l/DMzkZG9VU2VGNkflSLWr5l4y
         baqqSBzOjPPplVASU98ayStQROIQYUoRSWaLxR7AZs31Wv2OLMKV92+cO3FAIwV8donY
         kgLEHtf6f077dy3ZvgnhsYH9YfOQ16hbS3hs/HdBRoYzVZ45dU/n8R8b5PBD24ufrfiR
         Jc5ctG6tqKEz6p9bIgBXSHAT9sv3lYp8Z5u4QXXKiZZ4zZB78JEyrFGO2zzMfT5yzBX6
         DTyuv+qNNo16tt365n7GiNCkAix7lGu5qQA210xTqpplSCQJ4ORd7eE3NA4AQBxGBlGW
         dM8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=bFw9Gkkvg0BTOd2nWxZTZjO07LxfydSrJSyVMxw63hw=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=PjLZlKXC1DpcD5O62lP314ommDR2lCLpDasL8UvxQAeHiB6UfByekD0HGCXvwYRaoo
         tL8hR723YVD3GRcHMNIf9bDQuajPfFo1U9luEsH7tpxue3HSi2VidxCXumqhP39ec+fI
         vnJSKoj7zezBGaVnm+TVMpFnug+CSRmh38jfnWf+TArLCOEAwwytLR5exFgCGIa/pVoQ
         49TbtxCP/0ldCbDaxIeWWuSDXgTTmA22rInkHEC3buKXx66ewYfzlHW39gOky9zDe5o5
         viM/UjEjslZHnNGvLP78gqlSlykkPblCmvzvdl6EkT6qxcUJmxsGFwvB4oXrAHXQEp9Y
         C51Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id es14-20020a056214192e00b0064f92d244f5si6596366qvb.396.2023.11.25.21.31.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 21:31:46 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-533-oxzEgbuGO-qdFmh5L1ySSw-1; Sun,
 26 Nov 2023 00:31:45 -0500
X-MC-Unique: oxzEgbuGO-qdFmh5L1ySSw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 271C63810B00
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 05:31:45 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 241A5492BE8; Sun, 26 Nov 2023 05:31:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CD22492BE7
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 05:31:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2D19811E7B
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 05:31:44 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-658-ltOqw01kNt-HthQPMVMgyg-1; Sun,
 26 Nov 2023 00:31:43 -0500
X-MC-Unique: ltOqw01kNt-HthQPMVMgyg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 679B140508;
	Sun, 26 Nov 2023 00:31:42 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 338E11001B1; Sun, 26 Nov 2023 00:31:42 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 330C11000A3;
	Sun, 26 Nov 2023 00:31:42 -0500 (EST)
Date: Sun, 26 Nov 2023 00:31:42 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: interesting email bounce?
In-Reply-To: <8d5f0118-fd28-ba98-f18a-0606ab60ca23@panix.com>
Message-ID: <Pine.LNX.4.64.2311260030260.3660318@users.shellworld.net>
References: <Pine.LNX.4.64.2311252143200.3657901@users.shellworld.net>
 <8d5f0118-fd28-ba98-f18a-0606ab60ca23@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
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

Why would that impact things here, unless this group is hosted at google?
what is returned was actually sent on Monday.



On Sun, 26 Nov 2023, Jude DaShiell wrote:

> with google's smtp, people are limited to a maximum of 50 posts a day
> unless that was changed recently.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Sat, 25 Nov 2023, Karen Lewellen wrote:
>
>> Hi everyone,
>> have any of you posted, only to have your post returned with the list email
>> host saying not now?
>> Best,
>> Karen
>>
>>
>>
>

