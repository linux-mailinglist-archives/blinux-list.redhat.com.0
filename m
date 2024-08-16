Return-Path: <blinux-list+bncBCVPTHE7K4IOPUX2WUDBUBBEZVXFK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E1C953ED5
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 03:20:41 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-44fe49fa389sf16543591cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 18:20:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723771240; cv=pass;
        d=google.com; s=arc-20160816;
        b=H8/BGLsTGX+6IDYAyzLy1yTiew4u7e3JMW7CWFBMU/uNqPDTeQ19snFOCvB1R3BTdX
         0HUKk9nCleC3VnFILxzM8xuUJgTpAaGBVPQvCRuitjmtlFuiaPxJfPRxRGn+Rc4XW6Sf
         BjjAcSToJntaLY1vaic/Uwd++EYId1LhJzBlsO9t9S0HxH67xqe2wIEsKboXn+GPz9KE
         ptAfMs/UKJJM1o7aessfK4ZOzLnR00DiLpgo5Fs3lBlYaZfkhXKdOk1vfwXHnfNwMYCC
         pWgRNkb0jaQPxNxIeX85DZ3y4eLJ+G8jc1+zpOJUHfxejZZIgJ1VhBKgtyUBaBbyg4E5
         dsIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=kKM/CtogvZsefAlUtdDtuhZLnS6rrfIXntRTQYelaX0=;
        fh=urP11oIENszBMG2Gl3hYTrX7W4uXT8IKmTSFMa31tAU=;
        b=xbHisg0QgDneH3sWETj6XJXpzkSxtgHtge/osyJsJ1p/G0ToNuQ9wnnu0HHZRGZeDq
         UUy64hgLWomcphQM7DrcltzVtZiTMARmqvod1RsXAUb0Pb5PQh9v3YWTqBhpywr0OK4M
         Dj9kGjJEIunsNr711gFGhlDwHXExUuqIUhrYzmJCL2fmG/odcO0ParSgQEXoi7mgRZ9g
         /0W5eKdkC2r6yUKdIsaumHNQTcZq5s9sGFIj5/u4TjwJ8gmlOwT1x7Zcs9uKy0dpz0LH
         UOA2N4Gy09x17baI2Nh4X1Q+YoNYDWXXpSoOnEApn2vMzJrqLDdS3ox+jmcaPx1ELLfQ
         Te6w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723771240; x=1724376040;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKM/CtogvZsefAlUtdDtuhZLnS6rrfIXntRTQYelaX0=;
        b=uVdsM3CjTQp1PTQU7zGAMxba4wSj08LYmpW5EcCuOAwGiXm2Ao6qeekj7esV+nkzYl
         IrcxYR0jRjrMnXyJ+iJ6nvbliDLsN9uCealM28poDmQYaUyXieXn7OjLbvke8oH0TSsp
         /6/bUnamJX6iyGsxbfbfrNYoZFegzphu3FblZzi9lcr5xIlXOQ30u22HmDOaYXthDXwE
         LdZ1mcsGwcYTRNZOtLf3Qt+yo7DaPdjHBJoghvr+IvrxjAuEGmJ0At0gm+4CmXC7CF3f
         tG4Vr91F4/Lfv8BKA+sX/fX+SJbxf1ZeKog9+cCmON5buna6Dl7KulBadHZLD+BLbzln
         VGyA==
X-Forwarded-Encrypted: i=2; AJvYcCWZfJBuyi4VFB9JlIy2tcDKARStB3WY07QhzHy+FCnveKoXHrSOaRcFHLLXbkfF1vTerxYPHGAVPtc1nqD5YkR3cC5st7Yh/Ldc
X-Gm-Message-State: AOJu0Yx4F+QO0Z41YKShVrFbbylrZFa/YUniJPk9n42oApWCQ9p/KAfH
	YWRrkUCtInehJNt91ELRRpj3mYtP21OyS00J3ek2x4YYNo7ZEsR+zp5W60A7VwA=
X-Google-Smtp-Source: AGHT+IFv7NZ7cj0vlmRv+1AGtyztRhGlMIVOLCgsh4Jhr7GnXwcYYEb8/+WYs05cQgxGAHhW3yPUFw==
X-Received: by 2002:a05:622a:4a8b:b0:447:f285:926a with SMTP id d75a77b69052e-453743d3f54mr16341561cf.62.1723771239953;
        Thu, 15 Aug 2024 18:20:39 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:c5:b0:451:c853:62e0 with SMTP id
 d75a77b69052e-45367454513ls18990031cf.1.-pod-prod-05-us; Thu, 15 Aug 2024
 18:20:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXqd52OFIRO3r8Rf910p3moaZ7nq629QyNNiHG+vjTzy73d1T5xwSzMmsYK5H6t7K4Nat61hYyUymP9XfQYaFNe6KJQA+nqhIuOwTPN
X-Received: by 2002:a05:620a:1708:b0:79d:916d:ae5 with SMTP id af79cd13be357-7a5068f7a94mr151997385a.5.1723771238842;
        Thu, 15 Aug 2024 18:20:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723771238; cv=none;
        d=google.com; s=arc-20160816;
        b=zEaOqIurgMLU7iu2kzm0ne8qz3rsMf5cW2S52wsia6kOslZyMM6WeMfSa3RBMjytYY
         czOujToG80dKEz8krIVvwiVQ0tRyZ1T5SUnIKoxMF6nxrr/QYOolutzUcYHGd40FLKn6
         YByJArv8e3wknSr4UViL3K9VT4Sx5WKzKV2aSX5hp4mhUWcQNhLcoB3Yx4l+OPwKig2v
         w7j07fSdWUiwiWThMGt3eWFGUYwuQfnqnGry2EuIjiZ0TRO3SBW6BAi+tXU4pvK3OaAf
         feaVnigAWWv7bYo/cOih5VIOikZuzSrLjv0W8slmDXMUcLgOW+G7abUANfg3r7MXqDwz
         5NLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=kKM/CtogvZsefAlUtdDtuhZLnS6rrfIXntRTQYelaX0=;
        fh=a/ESFSq2u0cF4x6pPO13g5BX50Sy6I7y8LZ4Hq+LoZo=;
        b=hy2FWarkguYCOcekbtzJxuYezYVCN4Gpo8l1g1KieVQqlEB1pjkwvNbRXPXMIMq+3M
         fjYrstDSncMV+/vhmcePyKK7twelk0dAfLu6MaxkdGkswvPdCj2rDpNxxGRX2VF5DbmR
         WFHGV7dLQfzg+BMLR8OH5eTMmeH13VWU9WFoGLNzRi15EHL/tLqSlTdXtgaP5sc/0PpV
         4gY6ViHxzoHyWsyC8gUHYp8FtR+qrxE+pIOi+ENYTuZ0/RYzJNOl74qJh4DNsPMSLsxW
         wFaHu+trk7J2iAuqgO/zPiBqrAMlji2LGPsnQq9YL+xbgJNN8/DLNJslv1R6RdraB7AR
         WpZg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4ff0ebc90si298676985a.509.2024.08.15.18.20.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 18:20:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-192-UEC6nEe1P66KDYAlFzJoJQ-1; Thu,
 15 Aug 2024 21:20:37 -0400
X-MC-Unique: UEC6nEe1P66KDYAlFzJoJQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7224219560A2
	for <blinux-list@gapps.redhat.com>; Fri, 16 Aug 2024 01:20:36 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6A35C300070A; Fri, 16 Aug 2024 01:20:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 67BAF300019A
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 01:20:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D390119560A2
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 01:20:35 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-44-HD8Ic_q1PwC3KQTFrCWGcQ-1; Thu,
 15 Aug 2024 21:20:33 -0400
X-MC-Unique: HD8Ic_q1PwC3KQTFrCWGcQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 7D4324050A;
	Thu, 15 Aug 2024 21:20:32 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 5013A1001C6; Thu, 15 Aug 2024 21:20:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 4E93810008B;
	Thu, 15 Aug 2024 21:20:32 -0400 (EDT)
Date: Thu, 15 Aug 2024 21:20:32 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Jason J.G. White" <jason@jasonjgw.net>
cc: blinux-list@redhat.com
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
In-Reply-To: <be01736a-fac7-4689-9054-c4bc6d314014@jasonjgw.net>
Message-ID: <Pine.LNX.4.64.2408152108400.85960@users.shellworld.net>
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
 <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it>
 <9ac9a8b2-1647-aa75-5015-a7ae1259faad@hubert-humphrey.com>
 <2c9cf472-2d34-4b2e-b1c4-0c71f0a99e08@jasonjgw.net>
 <be01736a-fac7-4689-9054-c4bc6d314014@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Jason,
While I am certain most here respect your well earned years of experience, 
I am unsure your comment, speaking personally, is totally fair.  certainly 
not  especially  productive for someone simply wanting to incorporate 
Linux  with they resources they have, which is far from uniform.
More than a few sources suggest there are hundreds of millions of people 
on the planet experiencing blindness.
For you to state that if a few are managing a task then a person must be 
doing  it wrong does not reflect how much like clay Linux can be, how often 
a slight change even an upgrade can negatively impact results.
even on the main Debian list where access may not be the focus Linux users 
with years of background struggle.
So do those here with strong grounding like  Jude from time to time.
It is unfair to  human individuality to claim that, if they are not 
getting your results, its their problem.
much as it is, speaking personally, unfair to downplay an effort of 
someone wanting a solution, by telling them  not to try until they are 
trained..you do not know their story or situation.
Just hoping this forum can remain a learning environment no matter the 
level of user.
best
Kare



On Thu, 15 Aug 2024, 'Jason J.G. White' via blinux-list@redhat.com wrote:

> Also, if you're running an "unstable" distribution such as Debian Sid, the 
> assumption is that you know what you're doing with respect to upgrading and 
> downgrading packages to work around temporary packaging issues. It is also 
> expected that you can write informative bug reports.
>
> If you don't have experience in Linux system administration, then Debian Sid 
> probably isn't what you want until you bring your skills up to the 
> appropriate level.
>
> On 15/8/24 15:18, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>>
>>  On 15/8/24 14:16, Chime Hart wrote:
>> >  Originally ORCA was working until Python3.12, but even trying an older 
>> >  version of at-spy, ORCA will not run, but for errors.
>>  It's fine here with Python 3.12.4.
>>
>>  To unsubscribe from this group and stop receiving emails from it, send an
>>  email to blinux-list+unsubscribe@redhat.com.
>> 
>
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

