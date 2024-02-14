Return-Path: <blinux-list+bncBCVPTHE7K4IPTI5RVYDBUBEKQPNWK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F8F854275
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 06:39:06 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6800714a149sf110698946d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 21:39:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707889146; cv=pass;
        d=google.com; s=arc-20160816;
        b=ORe8KIqbfWJ+SaRDhisbTtca7tN0ZY/Fz+o/cK5zPswLOUlToj0wPm5vLWyIynBWyg
         IbIDwWdgN7XCrcB3x1oVTF7V1dMMpID2Lv6/2LMnltZgQGRKlM67cuJCxdHo4RIxBttU
         lPsEM0YkslT2jxwK3zNeeff3M8h6U8m0nwarfIw7rSxrWK+OeBACp+5MQBOVfKF8p+uj
         YiZGLpdI/o+rh5MLvk8EhcSyn5LHjj4h9yj2gFhh8EU4hJmUgvhTWqepRetYxHpAVVdw
         /Ohi31q1F+BGEtQCq6MVT3+nq/WTpYfJrxMbRJhR9RV/i93xp3Qz9Dhvhw1f0JRuGiIy
         d14g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=klU0aV/kFLWXlycgEv7NinPY4wprlBFyvy4gf/ZMUHY=;
        fh=vQQ+09plDTDrpi8bmw28wJppSYuLHv3bsWit0zLsWCo=;
        b=cpa933wecw75fnnxSeGwcbOzLaHcCPKw0fRwTlc85OIq7iV+XC40oymbIjIC6JTtEX
         lM4EvSzf3Rv+MlrszZH6yaExzPlnmGNYGCoK+1vVbTARApekOxch7Zi+5LfGuA1mBPD1
         4Oaqwz1jTl3ifPP9fKRshb6qC7WMNvrK7EZ1xmNgDVf3mbQ8pUayW9VXEBlKteud0PRc
         YUc63cOGAUy8PUqFMUFCgS+vNDywUQMQ60msSiSud3LckSfoS3ZGVAUgqyC3exwhApGG
         w+FjDNjTWEsYZHmAHyPGsloENxrRsda+bOvl8EiEnTbppiK/DY33gbOyRrT6KdD4y8Fz
         bi5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707889146; x=1708493946;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=klU0aV/kFLWXlycgEv7NinPY4wprlBFyvy4gf/ZMUHY=;
        b=n0Acu/8E5r+dcFlKP5q/VAp/6kGiXsY+IFB3gR3NMOonCG5vVYsRxKz6wjmMrtPEJT
         UCEpXUGeUxbTd2Yi9L188EsERn99Xec/IcRFhjGe27ZWMIusneCAjfl0se10n4E+OqnQ
         3wCqsRc7Rn+LL6ROtjpFUvMTFT2KgylDL3DYNiMizQB6g6IHisMV/m7GkurTwB+k7yKd
         jIWErEZxLuNfUnkZ0r8cX9EMm5GkrmKjdVE6xRJHyKRmdFaNe+jP/eaqha9sa45kUqFG
         gp8K5Uk5ZQ0EXXgzp4EUuPf7Ug8N2LzIJxwMByaEqVh2RCcwpk0EhHl40Pv3ILkJApqv
         t62A==
X-Forwarded-Encrypted: i=2; AJvYcCXSdGVs3wxqS27MNfOvyBlsNaGSrJZbijZQb/mKv21V8gzAxDGD7CSEjY7VVW+ynrOiQB3J7so3qO/B2TNhiI+eEN6B7J9AAzmU
X-Gm-Message-State: AOJu0Yw6kcI0V4/+ZBIWg5g6gMaIqFI8/ABphsI91YW8C8ASytmnkaH3
	3y4FaarrLS+Z2u1b9OfnViunnWAlNz+beruv90IK41O7vntSZow0QsHjsrRqT7k=
X-Google-Smtp-Source: AGHT+IFpFcFt5VTgGr4P+/d/4mu1UX7lKKRJ8lbTlzfUSbj0WJIsjik39Byw1DTYVmnLz97SF/gbsA==
X-Received: by 2002:ac8:5f11:0:b0:42a:48bc:f69 with SMTP id x17-20020ac85f11000000b0042a48bc0f69mr1953371qta.35.1707889145743;
        Tue, 13 Feb 2024 21:39:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2a48:b0:68c:cca7:f6d5 with SMTP id
 jf8-20020a0562142a4800b0068ccca7f6d5ls4273383qvb.0.-pod-prod-09-us; Tue, 13
 Feb 2024 21:39:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX8FRurh7qaOuuqUcMGjLngNB9YyEx4e4MKstLXzhMMOGw0Huvre64QYWBXPqE/C0LXHa3tCUK2L4U9Ml1QgDJVRq66CJxUArsMwqqt
X-Received: by 2002:ad4:5949:0:b0:68e:f75c:59b9 with SMTP id eo9-20020ad45949000000b0068ef75c59b9mr2035524qvb.44.1707889144965;
        Tue, 13 Feb 2024 21:39:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707889144; cv=none;
        d=google.com; s=arc-20160816;
        b=yJ+KL+V6GPFl3doUkXY2xjp/i3JReXhwvNVabvmqTFjUxgbPK8qgqMq5yc3ABCx+5L
         mL6QWgh07OBMLflTKJjiZJ934O0v1ZRWl4pbooQ7S0Pc/jA/tgCSFLHTR0jl2Zdl7Mei
         WlDPH5xVVUMJJiC2wiDGdESoc/rpQPMu37ogoEBEsE3lJoLXyqAm0TlG2uwE1Tq3XJ3q
         1kWeGUMgq56ed8zhMbEwuwVChyDwrr11OL5jyd67A23SMHCnS3jdxRbAp/fzx8bthBar
         H6lKTfaPoU9Q1B1TUNAORyj0Rn4thPOnYrQMWU/jJhMRtn6bnRqt11CNEclUHgx+ywAy
         f4kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=klU0aV/kFLWXlycgEv7NinPY4wprlBFyvy4gf/ZMUHY=;
        fh=4RAiRD5yc0sWh9bASfdTGK4pNcQKgMdl6ikBHWOI76A=;
        b=lqX76B0dX50Fs/kmtwBUSZMOKNSUdJ9NrlA9WCmZEVq3vcLfZImX7Bfnvxn9SUfTCQ
         OUaL7LxVwHbLfN7h3DSqslaP4dkBf4W9KLlwe3TjMxOra1zRP+GZaUCdS/L23vPdED9d
         BO21e4RH+2/lIvkONRXS95Tjael3tDKeOUeR92VhZABeOCCxysBfILS3EBtwYXP1qOPe
         s2CjtXBUAStrX6vFlL0rgJhbF9/bmT8erDq37Be93m2OuppXBG7CBaUhuN5kzbNEmnYV
         DmbBYdBakzhUifdWSRikkIu69jHjksq3u5f+RXWP3vHe4QbDyih98Jj5FwK6fSBX0RYD
         C9cQ==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Forwarded-Encrypted: i=1; AJvYcCW+y4vNWwGuY2brJPjMyOJEb+E1RGoHQ3UfQloTsBsakIdzt50fw4OaJ5dF7cfK7tJax3tzGMsSQnYL3IWXEGbOYe4oBdPtOiFCnehy
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id if7-20020a0562141c4700b0068efb6d010dsi1539330qvb.129.2024.02.13.21.39.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 21:39:04 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-635-HZcY0q6gOtOvNoWJ8e4Ldg-1; Wed,
 14 Feb 2024 00:39:02 -0500
X-MC-Unique: HZcY0q6gOtOvNoWJ8e4Ldg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B80213C025B0
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 05:39:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B46161BDB1; Wed, 14 Feb 2024 05:39:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BA5E8CE8
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 05:39:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2EB8285A588
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 05:39:02 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-324-y8v3xtfUOTuECgciskyNiw-1; Wed,
 14 Feb 2024 00:38:59 -0500
X-MC-Unique: y8v3xtfUOTuECgciskyNiw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 44D2A40508;
	Wed, 14 Feb 2024 00:38:59 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 0D249100163; Wed, 14 Feb 2024 00:38:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0BCAD1000A5;
	Wed, 14 Feb 2024 00:38:59 -0500 (EST)
Date: Wed, 14 Feb 2024 00:38:59 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Joel Roth <joelz@pobox.com>
cc: blinux-list@redhat.com
Subject: Re: ssh  command line question?
In-Reply-To: <20240214034102.nzqa4lpeeeljh22v@sprite>
Message-ID: <Pine.LNX.4.64.2402140036440.706690@users.shellworld.net>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
 <20240214034102.nzqa4lpeeeljh22v@sprite>
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

Thanks much,
That has been my memory as well, offering to update, while warning of the 
risk.
Now I am being told that I requested strict checking.
Going to ask dreamhost to send me the new  fingerprint..or whatever. 
Worst case can add it in manually.
Karen



On Tue, 13 Feb 2024, Joel Roth wrote:

> On Tue, Feb 13, 2024 at 09:19:05PM -0500, Karen Lewellen wrote:
>> Hi all,
>> Will aim to keep this simple.
>> is there an option with ssh from the command line that allows you to update
>> new keys for the known host list?
>> I ssh into my dreamhost office workspace from shellworld, as in
>> ssh email@email.thingy.
>> I provide the password, reaching the dreamhost shell structure for the
>> domains they host  on behalf of my employer.
>> dreamhost moved our services to a new server, changing our ip address, not
>> an issue, but also changing the fingertip keys <hope that is the correct
>> term, previously saved  for my access from shellworld..who seems to use a
>> strict  matching process of some kind.
>> My hope? is that there is an option that tells ssh to update the identifiers
>> used for known hosts?
>
> I recall ssh offering to update the known_hosts file, while
> warning of potential security issue.
>
> To verify the fingerprint of the new host, in the past, I
> emailed dreamhost support to send me the fingerprint.
>
>> Thanks,
>> Kare
>>
>>
>
> -- 
> Joel Roth
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

