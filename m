Return-Path: <blinux-list+bncBCVPTHE7K4IK5EMCXADBUBDWWIWBU@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 646F3991381
	for <lists+blinux-list@lfdr.de>; Sat,  5 Oct 2024 02:30:40 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cb317cd72esf48404556d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 04 Oct 2024 17:30:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728088239; cv=pass;
        d=google.com; s=arc-20240605;
        b=R/Hidtf9ZkPva/+kcfR3ofs6uTLc9r0ZXZoVvmb7kFcupuwds6IItU/xzjruIE0Jfs
         uYxoLzmvhpYEeM279XPf7LBiQYD314PhHpcVOoHi8H14oZaQUJvY76L6+ryFsOSpkC6w
         FAi4DYtUaYGvkXMrhG9UPogv9/PRAuiK3CViEE8SLrm11NnZOalIqQVZeGhuQl9aHGUr
         oPPEo7lbDKHyl1HwsDzQRaezuYll2pxqv9dIzPJ7+KrSjEwytbg0CKbFGG4IMMKqBXTn
         8wOMeSyyGBIPPTXQL7lCAW76KLLQFUgczaN0TxJj40nHnI1mmc1wOtCsQRmEuEqYl1dI
         3Hsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=khhA0nNEdu9oFjDH7ZssFXS+rzq0ij9leqwPuRTQNV0=;
        fh=u9Vmdy7ZIP/Ez9Nz/iLjzxBbA2fMnQOS5CZAPk0BlFw=;
        b=MDvypbE2wtWAVOyP4f4Qfb9H+ChGe0EbrnwGLA9VSprcTU+VyGFN6LLdHCVZJy+8Kx
         y+MMZruB0tARE7qy4ccl4STnhhumG80AfkkaWz2BCEPyVKv64WUj5+Sznbwsrl2duf+K
         hxKUxCotjpmus39+Z96hTPjgIODttzSciMpamWPFnYzOz+N/EMDSqPliHTPvaF/0GuSo
         YuNor31sz1ygzt+gykSeMHv9OXnGaRKBcJIddBCOn2I9egwJ3kUtBSDxfKRQWeb+p7/B
         jdu4Y+OY2+U+pmyroUWYmkLshjnWCF2c9y3oafvlSDzEAwu//uDWh6eDkpCCCxmKfTvp
         fHGg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728088239; x=1728693039;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khhA0nNEdu9oFjDH7ZssFXS+rzq0ij9leqwPuRTQNV0=;
        b=m3l0xhML9PAaLzGlShSQJUiO2RAF8lT/TNcB32RuwhVNfNVaue2S3D7yxe+Bn8ROj5
         I3UHY1K/VA7kvqyDPw0KdD1ybiTXbqkuTY5T0zt+TbcH8CxtWdhhXQ53LXiLgALyOHoC
         GA2ypjVQX6CBdKNjUVjsxFVSpWpsJC/LnRqq3I01j+EJCrWeTtaKtOG6rFL5SwAUZfOp
         xvsP0OgT0RGjBZ45enO/sFrT2/JcP2ryKmDGWHe1ousV36pJjkgJQhh44p0OU8/SoAb2
         VaaOb1Veuy70PCBwmv/vYBRhGKyWbl9qF0ZvkNzLeF8BeplhMX4OCU0Xg73iaLFxoJX/
         /OLQ==
X-Forwarded-Encrypted: i=2; AJvYcCUaKadkBiGEsUIhUYk0cJpe1jATp91X06irlBiDv6xolcOm/kyPZiNYtIXf3HL19ScBdAGf/Q==@lfdr.de
X-Gm-Message-State: AOJu0YzhatRkjxyiDvDbcRyQilAikYNkxw9ja0hHtWzYEZiBpb05RszV
	Jg3na8RzUbo4cWY2vw+v693VZDzJDc01oqYhfEmS0yC1g64JZBDUP1ZuJeuiA6E=
X-Google-Smtp-Source: AGHT+IG7/+vO2FtNVhAtW+nj9QwO92NOsyMMIU5GK1XPRWLZknasyxrLM9yaTXsezJ+mEEdGHhOC9w==
X-Received: by 2002:a05:6214:4281:b0:6cb:4e9f:13b4 with SMTP id 6a1803df08f44-6cb9a4c13efmr56452906d6.48.1728088238765;
        Fri, 04 Oct 2024 17:30:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5d6b:0:b0:6bd:9552:bc87 with SMTP id 6a1803df08f44-6cb90159b49ls18698276d6.2.-pod-prod-04-us;
 Fri, 04 Oct 2024 17:30:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVuROQFNyhfdr45Q+6SUL9gcVpou9uyPDYlc5ymlIJPcJ6/r0PQWp86BJLsa7jYDp31gieip5+Iuwmb1Q==@gapps.redhat.com
X-Received: by 2002:a05:620a:2986:b0:7a9:c0f2:f0d3 with SMTP id af79cd13be357-7ae6f4535a7mr780957385a.30.1728088237789;
        Fri, 04 Oct 2024 17:30:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728088237; cv=none;
        d=google.com; s=arc-20240605;
        b=M1oAg3iqps09gfD7npvRgYmTwVgBKA9OMjCKuLmpRsQ0P3a0NAQBp/Fv76IGx77VRl
         yiFC4JmOGQrIx9qHukz/j4DqGHa0hxdheSDYDlpI/U79Nu28+gvXNQjoU0YOud2gWlDv
         RjVUjTqRUQMfSPLPhW2Pc+Kp5vAwAMMNSn1Pn+wvl2Pukbk0Va9yr5xgNg0QtZCJA2Ok
         EWw+SYz+sDGF6BdpSfHnnowG/bHQ3QxOPDWm8YNKSFgtEb6ERD1ZDklPDuGSZtw9YPY6
         xurCOW/3f16jYnJydRwMNZ4onrWruK2QUHF9y/asZzz+6wOzvFW5wC5qYIrIo9djgwPW
         N6YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=khhA0nNEdu9oFjDH7ZssFXS+rzq0ij9leqwPuRTQNV0=;
        fh=VyKXAThI+6qSjiPugOOIse8Xpla/smkW2tVZYif5aK4=;
        b=e/QUekJjZhcfAdDJ23eUr0iOqQgor58i2tOjX8ZFEKPv0ymZoXp10EH5zjBTI4LwQM
         6Qd3w72zGs4orTF5cAY7jUeSUXiq2NHqW7PD5JLRun4Kc1AmTCLly9zikrbddS6eq1Rt
         nbV0HdSd3d4W51dRt5g/3upE+FOxI7mcwrpJrvfZcccSHPifrxU2+Un4dIYS3enZLcU3
         BQwUgWwALsH3sIuvcmR+aKRfLfZHhXRNAxfiVDlYNOa3ZThO2bgNNSQJesUQb00ruqw2
         i3M5XcxarS31f1An15XlDeXlFNhJL4s1u7ODdfR0Jy4K8YWfAz27iWEJjD1GJ49VDyzF
         PvFQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7ae7561935bsi88238285a.28.2024.10.04.17.30.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 17:30:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-282-sw97fc_4OsWV8UdmkaIm1Q-1; Fri,
 04 Oct 2024 20:30:36 -0400
X-MC-Unique: sw97fc_4OsWV8UdmkaIm1Q-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7C85D195608A
	for <blinux-list@gapps.redhat.com>; Sat,  5 Oct 2024 00:30:35 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 770E11955E94; Sat,  5 Oct 2024 00:30:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 748511955E93
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 00:30:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DFFB71955D5A
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 00:30:34 +0000 (UTC)
Received: from atlas.bondproducts.com (23.24.6.165 [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-416-TO_HNwjyOi-0534EP9a7KQ-1; Fri,
 04 Oct 2024 20:30:31 -0400
X-MC-Unique: TO_HNwjyOi-0534EP9a7KQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 9EDFC44FC7;
	Fri,  4 Oct 2024 20:30:30 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 84BCA100B4C; Fri,  4 Oct 2024 20:30:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 8318710008B;
	Fri,  4 Oct 2024 20:30:31 -0400 (EDT)
Date: Fri, 4 Oct 2024 20:30:31 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Didier Spaier <didier@slint.fr>
cc: blinux-list@redhat.com
Subject: Re: Has Any1 Ported TalkBack to Linux?
In-Reply-To: <e2eb147a-83aa-4d50-a054-90738b3ca86a@slint.fr>
Message-ID: <Pine.LNX.4.64.2410042027590.1106864@users.shellworld.net>
References: <113a028f-ec9a-7168-756a-6026111be747@hubert-humphrey.com>
 <e2eb147a-83aa-4d50-a054-90738b3ca86a@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

Hi, Chime,
That is correct talkback is now android. It used to be a Motorola wonder. 
If memory serves talkback has not been updated since 2013 or so.  Many on 
the google accessibility list complain..a great deal, about talkback 
problems.
  Kare



On Fri, 4 Oct 2024, Didier Spaier wrote:

> Hi,
> AFAIK no, TalkBack exists only for Android.
> Cheers,
> Didier
>
> On 10/4/24 18:40, Chime Hart wrote:
>> Hi All: Tomorrow we will be setting up my new Google TV Streamer, which will
>> have TalkBack, which got me wondering first why we cannot seem to install on a
>> Chromebook, and 2nd would TalkBack be an option in Debian? In running several
>> duckduck searches, I see a github page of fos. I have no idea what that
>> is-and-like many github pages, there were no direct downloads nor any git clone
>> commands? Thanks so much in advance
>> Chime
>>
>> To unsubscribe from this group and stop receiving emails from it, send an email
>> to blinux-list+unsubscribe@redhat.com.
>>
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

