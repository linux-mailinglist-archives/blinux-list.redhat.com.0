Return-Path: <blinux-list+bncBCVPTHE7K4IKXO7QVIDBUBB4INQOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5FD7F2473
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 04:02:05 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41e58a33efasf64305651cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 19:02:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700535724; x=1701140524;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7iqbIukIiWv7oG10J63TONJYoyEcnN5CQN6XadVeTFg=;
        b=W4iP3WV19Xs+ZbP+tgg+DI9lyDzm2Mo2rMts79/lAKEmdmA0vMeS3orGYvFLSiQfrW
         wMksPbW2dyWvIPcWcAdw42O4VjhbYZ7k9jhMVEapSGs8KJY0hBsHt2NjTy0hrxe9d5ka
         3mcHahVJ6TQwe0yNNVv8ku4R9vH105935sLdL/Ok7dpxeTmqNY9ZXNkj0lQL644iHg95
         lsnKv+WIM6awppnWY/RUMzWURYakfmK0vbPrGQw64GR1DeVphqDLVscr8vfbGocbyENB
         qfSTFndUc+Z6KcbV40oIb4oOFuUla3FyQfuopZXVvam4WklM4AJ9OnhEN5APsegSYu72
         rVPw==
X-Gm-Message-State: AOJu0YzGFf9IF7UFhUjflo8zynoQPrhjxcB1TmdDpL/cG4Uoe9mgioZ6
	KZTBR47tN2ugt+0SNmmvhsd7JA==
X-Google-Smtp-Source: AGHT+IEFKD3nXyHsQ2y4UfJjrhoOSrtueYIMWW2Qph8pz61S6UfRtegFJVSlnw8ib3GxCG5EBnT8zA==
X-Received: by 2002:a05:622a:488d:b0:423:6e0c:427d with SMTP id fc13-20020a05622a488d00b004236e0c427dmr1650682qtb.32.1700535723957;
        Mon, 20 Nov 2023 19:02:03 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d54:0:b0:421:96cf:753c with SMTP id g20-20020ac85d54000000b0042196cf753cls3991245qtx.1.-pod-prod-05-us;
 Mon, 20 Nov 2023 19:02:03 -0800 (PST)
X-Received: by 2002:a05:622a:19a0:b0:41c:c2db:217e with SMTP id u32-20020a05622a19a000b0041cc2db217emr11702409qtc.46.1700535723187;
        Mon, 20 Nov 2023 19:02:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700535723; cv=none;
        d=google.com; s=arc-20160816;
        b=tFA6qRHlC7RMr+ktEuQttB5SFCrHyDWWdUlhzmXlZpZx5MeWLY/4j1WsOjyPR4rAcx
         Dg+CrWiVJmwzc7/yTfbm/8uoHma3dH2n3r1cdS71A0f67/QQnQst5Ahmx50YLpPFe5pa
         7eMFdeSMxdSlLNabo3UwCeJ2+YSAqfy0qUudX6JzdRpY69lUbaOXI0nDAm1XnCcgVaQE
         Oquhtn9FmLZC/FDBCQczBy/1x7i0D2oF2FYFMqsHbVCJWxit7fU6eBriJOk+rWRBFFHZ
         QCM5Uzf83bcP10d72g9Y3+bvWt9h5sJzrSmiC1hE1HENLsfDV+DRT9qVGFJo2x11LVWR
         /XBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=7iqbIukIiWv7oG10J63TONJYoyEcnN5CQN6XadVeTFg=;
        fh=AISzwqGD61sZMYJiju9jWSKUGCMc5rv7GSLo65LOhDI=;
        b=EZID1Or+dUgXozX/rtaoD0k/6ZJtyiSlkMa9SF1gfbfnjRXzhxCyCyISldnqaFDd+A
         TrbytQ9qAei+mnSSo2W1+pA+HUQbhKxvK9wg9d8HgNMOuHsWwD9uwiFqBZxbB+LoYJeA
         NTeF4fwUB/PAyjGBHczT2oeZ3k3ckvfP9sZVTVS+oRzfJGriNDNOVtr8+eFUl2x1uRuJ
         nEe6kvdMj83JEy3ge2fD7QmiOfhcfdeyTE5D11hOTo8K31gqShNEjrEGCDXkSEF7/xUL
         xQjcgjS5Vt17vRA7jZQ8G8RuxF8wx+e4uIDLnuPenEugwRW0jPyHjU+8e7TDctewqkUJ
         bPww==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ga8-20020a05622a590800b0042372a5a7c9si59472qtb.154.2023.11.20.19.02.02
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 19:02:03 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-436-WvKXRxUcPr6gID4GO9A8Ug-1; Mon, 20 Nov 2023 22:02:01 -0500
X-MC-Unique: WvKXRxUcPr6gID4GO9A8Ug-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DEC49805143
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 03:02:00 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DB7092166B27; Tue, 21 Nov 2023 03:02:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D44CC2166B28
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 03:02:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB2221C07247
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 03:02:00 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-527-ofuRkvTzM1uM7OJEagUfPA-1; Mon,
 20 Nov 2023 22:01:58 -0500
X-MC-Unique: ofuRkvTzM1uM7OJEagUfPA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 98B064050A;
	Mon, 20 Nov 2023 22:01:57 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 5D4701001C0; Mon, 20 Nov 2023 22:01:57 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 5CC9710009B;
	Mon, 20 Nov 2023 22:01:57 -0500 (EST)
Date: Mon, 20 Nov 2023 22:01:57 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Henry Yen <blinux-mail@AegisInfoSys.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <20231121024247.GX23130@nntp.AegisInfoSys.com>
Message-ID: <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
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
Thanks for these details.
What does the "handy" read only flag provide?
My goal is to access this account fully, not simply to read email, 
although as a test it should be handy.
Unless it has changed, the code would indeed come to the alternative 
address google has on file, instead of to a sell phone..but it has been 
about a year.
Thanks,
Karen



On Mon, 20 Nov 2023, Henry Yen wrote:

> according to google, you will have to use "app password" as a password
> to your gmail account (to keep your overall google password safe).
> to do that, you need to first turn on "2-step verification", then
> generate the app password (i think it's in the 2-step-verification section).
> in addition, yes, there's an "enable imap" (and some imap-related
> settings) in gmail account settings.
>
> you will have to respond to the code that google sends when first turning
> on 2-step verification. but once you've generated the app password for
> gmail-imap, i don't think google will send any codes merely to access
> gmail via imap.
>
> most of this is in step 2 and step 3 of the general instructions:
>
>   https://support.google.com/a/answer/9003945
>
> two other notes:
> 1. imap access has to be via ssl-imap.
> 2. there's a handy "Read Only" flag on mutt, so the command line should be:
>
>   mutt -R -f imaps://username@imap.gmail.com
>
> On Mon, Nov 20, 2023 at 08:09:58AM -0500, Karen Lewellen wrote:
>> Hi,
>> so for the following to work.
>> mutt -f imap://lewellen.kd@imap.gmail.com
>> Something would have to be turned on in my gmail settings?
>> I got interrupted system call when I tried.
>> as shared, testing with another gmail account before tampering with my
>> main one.
>> Karen
>>
>> On Mon, 20 Nov 2023, Henry Yen wrote:
>>
>>> my reading is that google/gmail will start requiring a more complicated
>>> method of connecting to gmail server emailboxes in about 9 months.
>>> in the meantime, plain imap access will still work.
>>>
>>> mutt can access an emailbox via imap simply enough, like:
>>>
>>>  mutt -f imap://username@imap.gmail.com
>>>
>>> my reading also suggests that the ability for an imap client to connect
>>> to gmail requires a setting in one's gmail account.
>>>
>>> On Mon, Nov 20, 2023 at 05:30:59AM -0500, Karen Lewellen wrote:
>>>> Hi folks,
>>>> I still have direct access to basic html, at least until this morning.
>>>> Google is forcing the issue, a change to standard view, requiring a
>>>> captcha to ahem confirm it is me.
>>>> I understand some folks use mutt, which is likely installed on shellworld.
>>>> Before I  tamper with my main gmail account though, I am considering a
>>>> test, I have a second gmail account I have not reached independently for
>>>> some time.
>>>>
>>>> its set to forward..not solid as I have no access to my actual inbox.
>>>> I am told though that mutt may do the trick, but as I only use Linux via
>>>> shellworld, want a safe test, needing information.
>>>> Anyone use  mutt that can lend documentation, or a hand?
>>>> Thanks,
>>>> Kare
>
> -- 
> Henry Yen                                       Aegis Information Systems, Inc.
> Senior Systems Programmer                       Hicksville, New York
>

