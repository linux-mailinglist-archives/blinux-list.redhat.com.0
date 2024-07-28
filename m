Return-Path: <blinux-list+bncBCRNHOFA7YJBBSFVTK2QMGQESG45LPI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7CA93E902
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 21:23:54 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-44ffe348e70sf34479771cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 12:23:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722194633; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1VR5DhDFBmTkRyg7Ao7YE0vYB5psVE/x1tmiEFkhYgNnezJJJWOq4MUDA4Sffwp3j
         4OEWTmLDQACAzxw3dmx3WYVur/Pvqogj8K2RytkGFnhIEcup7TImFBPht9V6kRXzXAv2
         JkRMbPJQE4GOnixrFRnB8zeP8HxQ3LbFskhu8y/2GL1dbUyUL3V5Svcfs3pxO7zYYs+k
         SJ8W1eBwt07h4cs/pOEo388yBTy90kRMONEk2oSmMgsHhD2/EZq4B8Eha7rT7/yafJ6j
         xmBcjLbssvk9hwtPFx7xYY5XHAd4TKs0T/lypQQfpukS1qB3ddQ8MvK/D8v1GNe7tZ5z
         ZfEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:references
         :message-id:date:in-reply-to:from:subject:mime-version:delivered-to;
        bh=5xTQ7w5t5XJEuFp9F9iXTS+XWdNHKedrTNvP0tUQh9Y=;
        fh=GCNr/vhNzmdC/4qSiMltEMX0gkeNfnuA0o6RCyXoB1Q=;
        b=Jens6vTKJQ9VzI/ZKSnWXdqKrsma45wYTp+F1JGFp1s7CyxA3/s4VYQeR+xFrlbzg8
         5f7Dhuj0z0tbR7E8yhgnXmGVfP1AD+8w1yrGfJV6bLM4iY3/LVReRpdqLZYRa7xYxWaq
         9vfQpyRMzwRjDate1u9Qbh2XPSrlDylJ333XkeCQzEtJPjpYKBfONSAkJZWxdz8JJ7ne
         lKLD8NA1ysaSRGGTlIqhTqc76JBlYmcjrLS5+6B8hgteSFQEo7XajzgTlJcsoII7azdP
         EvU6RtmGORNtyW+XEp+svevq4OlqEjgUncrV/S3OPx20GomanziAY+6Gy+4mWI6R6od2
         4ReQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.210.172 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722194633; x=1722799433;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:references:message-id:date:in-reply-to
         :from:subject:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5xTQ7w5t5XJEuFp9F9iXTS+XWdNHKedrTNvP0tUQh9Y=;
        b=cKATqIsm2bj+T9+eDTlO7SaL7xWVdPFohBWeTIOjEYvJGM0hRUxFYO4AWEnfD/pXQ7
         QIQIuSoUBndBlqc36k+zXG79JWDP25Rey5nS2LveckVpDG98GDW0vKER0O3u7o8cPb3c
         QQBa+HKJcUtMgBtcwuSgzoh+CSrSGteEn65ujyB0n3QjW3tTUqtcC9W/eIk8Uvs31/sx
         b8Ezx0f498/wUQLTtaislmGPnLgOGWWPBy0z3XlYWlN/VInkpUZvQ41/qUuTeK9s7ihw
         zWikjjFWfdSDAZe7WZey5dqLMgK6z3WmnHZrY2JS/yAjSSpa3mL3grLckvfRHj/0b3p/
         wlOw==
X-Forwarded-Encrypted: i=2; AJvYcCWPS8tHXA0w+relnH6OwyTc0jY5eJ5qY9YDjJgqIPxUiD0x0VCi0qMV9oqJNzBxmtG1GOzJbCgzpmyh2aCWTTnB73sNH1Rq3KOa
X-Gm-Message-State: AOJu0YyHFmsh/0zeVHCjaUudAT8MLEEIrrrMkvsTSa2/7d5ZCuMhqPts
	ue6qC43JNswrYJvpUPqsuGMVGbSXweWbhGr+9N7jfdkha6vojUWcy2JiwWboT1A=
X-Google-Smtp-Source: AGHT+IGUNEOjLdWjigRQSzIpMhbpNj9pX8m94nNjIJ7mQtZeFt1xttYIEpitlxdMEjYEg6GbJzBciw==
X-Received: by 2002:ac8:5808:0:b0:44f:fe4f:41d8 with SMTP id d75a77b69052e-45004f343a1mr66177431cf.42.1722194633104;
        Sun, 28 Jul 2024 12:23:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5982:0:b0:449:2608:3035 with SMTP id d75a77b69052e-44fe31c4e83ls79325401cf.1.-pod-prod-01-us;
 Sun, 28 Jul 2024 12:23:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUGgwBCOuT72JfS1ITIsxLLOoBR20CJbP+rmWDRcHDAThHUmRzCKdQRAR3SuBjf55jGe2oyG4Z2ejuVJ8I8gkhCuCxKDtCiGGKuWWV2
X-Received: by 2002:a05:620a:4452:b0:79f:182a:d435 with SMTP id af79cd13be357-7a1e5265583mr878545785a.32.1722194632205;
        Sun, 28 Jul 2024 12:23:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722194632; cv=none;
        d=google.com; s=arc-20160816;
        b=vDJOSSYfyP2qnJzO9wn7ukHDgocgDpGrUZzcs56SD7qCHr5TGC/Ohmr0eCD/50naQc
         gx+963rpCxaOyj+wzLI9E0cc2TiKK6ZqNRIKZXz8RkGgYMv+OKek/zyy2dm/Alna+Mis
         QkRuKxoLDLx3jzF2iUkIQryDW18FO3SC72RwLHclIgTzTAXGxBt/6iWTUzTejD95h3JH
         u7QBDXddK/a/7PvR6T4fzPTrTHXo0ZCIlvrG0UltvfL4zvZ5OJjmByNwfoP5uOu046qM
         FhtlKjtFAkdhygv1HnRSWwYZ8397Eljc7pIUYIifaEs1oDIFtAfAvYrPsQCvAfibNfRe
         wCvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:references:message-id:date:in-reply-to
         :from:subject:mime-version:delivered-to;
        bh=BnuFSOA8cVqt7REL3f6e6jWbHW9Mk0JbnOf3wVr5Rgc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=z3bGxjdLmg/c038jONlTjVhp5bc+LZyh35Y5nb0Q14ZECssIG9C1TeQZOGKj3enWrk
         DnPzzyfnVj3Rdl0tO/RHKsvJHIimc5ruprgcXG11/79dnjAmBTQC+NWLTVwxryqyqH+w
         mskArm5Sk52OKs8wq1nQT1cD+zC+aHxrpf5oF61ykmda8vjVJZesF7vGKhM4ITCNlbVL
         T6fcpm7BRm15N32Tgd/ZSoyPx0pQNL/ndAETEiA/7m3wUbJ2p0P4YF+AgvKiWXbcQwvP
         bstiz8pc2XRDw5RghC3J/UVn+TLzHaVEuep6ThRSt3eTtK8W9ZqX/jSLgtkH6G0/gvtX
         3C9Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.210.172 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a1d746236asi888803185a.480.2024.07.28.12.23.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 12:23:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.210.172 as permitted sender) client-ip=209.85.210.172;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-220-G2YspTTbP0GiN1aGXyMqDw-1; Sun,
 28 Jul 2024 15:23:50 -0400
X-MC-Unique: G2YspTTbP0GiN1aGXyMqDw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D10D81956095
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 19:23:49 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C1D893000193; Sun, 28 Jul 2024 19:23:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BEF9D300018D
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 19:23:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3B5201955D48
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 19:23:49 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-74-w2p0F-eQPVydJd4_7YkB5w-1; Sun, 28 Jul 2024 15:23:46 -0400
X-MC-Unique: w2p0F-eQPVydJd4_7YkB5w-1
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-70b703eda27so1437992b3a.3
        for <blinux-list@redhat.com>; Sun, 28 Jul 2024 12:23:46 -0700 (PDT)
X-Received: by 2002:a17:90b:1b44:b0:2c9:a015:ac2e with SMTP id 98e67ed59e1d1-2cf7e1d7298mr3897649a91.14.1722194624909;
        Sun, 28 Jul 2024 12:23:44 -0700 (PDT)
Received: from smtpclient.apple ([50.123.68.107])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cf28c7f1bfsm7033740a91.22.2024.07.28.12.23.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2024 12:23:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.8\))
Subject: Re: making YouTube (etc) videos more accessible?
From: Rich Morin <rdm@cfcl.com>
In-Reply-To: <20240728.190255.886.4@[192.168.1.100]>
Date: Sun, 28 Jul 2024 12:23:43 -0700
Message-Id: <99B4EEFF-D063-459A-8C68-C437E4758811@cfcl.com>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
 <8eedfc39-ac45-444b-8759-c76cb94406b9@jasonjgw.net>
 <D4A63476-AD01-4437-8F3B-AF0EB0B214B4@cfcl.com>
 <20240728.190255.886.4@[192.168.1.100]>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: cfcl.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rdm@cfcl.com designates 209.85.210.172 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

The screen reader (or whatever) wouldn't have to be "jabbering over the pre=
senter".  For example, the user could pause the video to examine and/or dis=
cuss a given slide.  If desired, the user could be alerted each time a new =
slide comes up (eg, by a short tone).

One of the useful aspects of recorded presentations is the ability to pause=
 and review sections which "went by too fast".  I frequently do this myself=
, pausing the video to examine a slide of interest.

-r

> On Jul 28, 2024, at 12:02, 'Rob Hudson' via blinux-list@redhat.com <blinu=
x-list@redhat.com> wrote:
>=20
> You would have the screen reader jabbering over the presenter, so I'm not=
 sure that would take off. Audio description is usually slotted between dia=
log in tv shows and movies, so I'm not sure this approach would work for th=
e type of content you are talking about.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

