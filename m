Return-Path: <blinux-list+bncBCVPTHE7K4IOZBXQVIDBUBGTBFOI4@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D057F22E5
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 02:10:06 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7789f06778asf1229237685a.0
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 17:10:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700529005; x=1701133805;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kN2sKIpNYVWfMBGPo2tyJ5iJ85g5RrmbAmbqk7q5ME0=;
        b=Obl5IhLl0NXKQl2Z+KZoYvxU8fgPIEc7G4vPm/di8FrYsKrDphdGIBy6FJIzHprJ9a
         9z/TcZAGLIxaUeukCkwTAhI1KW/OCZ3c7uQd5lux9aiCD2khuqiyV0A0Nz80TlT0ifM6
         grVcZvEahu73iA+6mAVmp3kNnkBmfNFkn9KalXDlqR+j0P2FniAS1OFzXVUas+Fy9KJL
         8MS9A1pFjSrs8r30U1UL2ZT234ZXeaHMQF1Vd2meYF3YsJRQGH/cPFGT58vCRhvJEmBf
         rUvGnvP8fYWhxYA/g4Cg1PlStJZ3i06gpEfdG3oU+k95kFsKTBhMzV+W0VH8/Jg+x95r
         hjcA==
X-Gm-Message-State: AOJu0Ywrw5+k5aj0qqEwcYXhTYOUrUotoPt9hyFT+SdmR3QHXEuvZqfO
	Lxfbxl8kkMvV6b5S891ugOcvQA==
X-Google-Smtp-Source: AGHT+IHozIa7FPPC0Y/Te8mfZKqR/8Tj4fMdd09kTONaTnPIRRpCFkhzX5JP5Sim5SJOLSfP/EMuHg==
X-Received: by 2002:a05:620a:f12:b0:773:a91c:6164 with SMTP id v18-20020a05620a0f1200b00773a91c6164mr1835410qkl.19.1700529004632;
        Mon, 20 Nov 2023 17:10:04 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f92:0:b0:41c:d310:a7c2 with SMTP id z18-20020ac87f92000000b0041cd310a7c2ls894332qtj.2.-pod-prod-00-us;
 Mon, 20 Nov 2023 17:10:03 -0800 (PST)
X-Received: by 2002:a05:622a:5d84:b0:416:4cc5:2f51 with SMTP id fu4-20020a05622a5d8400b004164cc52f51mr1653682qtb.1.1700529003657;
        Mon, 20 Nov 2023 17:10:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700529003; cv=none;
        d=google.com; s=arc-20160816;
        b=tghVSgZJT7Xn4/JmE17IRbSEfo4K1V6WFj2xqV2wiTXLRla5UQemMFMiCgTJ7zNj5I
         i85eex28JEueHhBEA9gSF0owc1rDle7sVR9ptqPTAd4B2YlPe5xnjpXB9Fcn3nL2mUho
         z9IU7BorKywgoVoW+Mqd6GJPOBEhkY0VMJdJYLyVXeOIltFDklrUgwHI1HYJibEBn/PL
         WdvTnUZelthH5KpUOmes7I4aa++KwlMW7GujWX8gCWK+bQlhhC25IUeqcBoMbyvFNiHx
         8/y67698EoxXiT4c8Ok4/ghGQFlr9kLtG8b8GGpaguWuJ3KnXpzFC2qpIL25PP5sSbVo
         ieBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=kN2sKIpNYVWfMBGPo2tyJ5iJ85g5RrmbAmbqk7q5ME0=;
        fh=AISzwqGD61sZMYJiju9jWSKUGCMc5rv7GSLo65LOhDI=;
        b=0ZO7x1FSf+vJM3/wavVn5U9kKTmo4NEbh+Qg/+K3ylL0fwGJliHR99dvLemJxEdd0t
         wMv4aHgXFVrNtBALlVPuIojLMaoeEinUtZQ1JOAvm0yxB0dez7Tlk2iXObwPc2w+YH1l
         pJezdqz9ZZAdDUEktzwInqnrKoDZB5Eb7exEsZnne84Fr5rSsYoBxjNyjREj17m/09rh
         JE5EOC/LGIXVr+gkCYNb6T9MDISKu9vqUeKXcv9MD7uBnMfjPzPiygFYzocu42X7i7Jm
         vMYgjiTUTCXrLtPBNIHpScHu5ASkO7nOeATm2nTkBb4RJW5I1S4Z0aVLpLGbRdAMojqQ
         lXMw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id cb18-20020a05622a1f9200b004236e90888bsi599253qtb.532.2023.11.20.17.10.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 17:10:03 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-326-gGhtyqaKPqeddrbLHAYm7g-1; Mon, 20 Nov 2023 20:10:02 -0500
X-MC-Unique: gGhtyqaKPqeddrbLHAYm7g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D42FB101A53B
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 01:10:01 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D0E6D112130D; Tue, 21 Nov 2023 01:10:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8E211121312
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:10:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A196A28EC10B
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:10:01 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-464-w2Y9JuNaOQKd0bj31lrSjA-1; Mon,
 20 Nov 2023 20:09:59 -0500
X-MC-Unique: w2Y9JuNaOQKd0bj31lrSjA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id DD80940508;
	Mon, 20 Nov 2023 20:09:58 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id A548C1001C0; Mon, 20 Nov 2023 20:09:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A4FE310009B;
	Mon, 20 Nov 2023 20:09:58 -0500 (EST)
Date: Mon, 20 Nov 2023 20:09:58 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Henry Yen <blinux-mail@AegisInfoSys.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <20231121000352.GW23130@nntp.AegisInfoSys.com>
Message-ID: <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

Hi,
so for the following to work.
mutt -f imap://lewellen.kd@imap.gmail.com
Something would have to be turned on in my gmail settings?
I got interrupted system call when I tried.
as shared, testing with another gmail account before tampering with my 
main one.
Karen



On Mon, 20 Nov 2023, Henry Yen wrote:

> my reading is that google/gmail will start requiring a more complicated
> method of connecting to gmail server emailboxes in about 9 months.
> in the meantime, plain imap access will still work.
>
> mutt can access an emailbox via imap simply enough, like:
>
>   mutt -f imap://username@imap.gmail.com
>
> my reading also suggests that the ability for an imap client to connect
> to gmail requires a setting in one's gmail account.
>
> On Mon, Nov 20, 2023 at 05:30:59AM -0500, Karen Lewellen wrote:
>> Hi folks,
>> I still have direct access to basic html, at least until this morning.
>> Google is forcing the issue, a change to standard view, requiring a
>> captcha to ahem confirm it is me.
>> I understand some folks use mutt, which is likely installed on shellworld.
>> Before I  tamper with my main gmail account though, I am considering a
>> test, I have a second gmail account I have not reached independently for
>> some time.
>>
>> its set to forward..not solid as I have no access to my actual inbox.
>> I am told though that mutt may do the trick, but as I only use Linux via
>> shellworld, want a safe test, needing information.
>> Anyone use  mutt that can lend documentation, or a hand?
>> Thanks,
>> Kare
>
> --
> Henry Yen                                       Aegis Information Systems, Inc.
> Senior Systems Programmer                       Hicksville, New York
>

