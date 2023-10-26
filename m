Return-Path: <blinux-list+bncBCVPTHE7K4IIVIHKVEDBUBAZ26KXE@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6287D8686
	for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 18:12:59 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-66d1e755077sf14344466d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 09:12:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698336778; x=1698941578;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y6rn1zQyvCXx3OawRHmLCNRtC0EozRhw5AUrhYMFnns=;
        b=p3NlI2zpCwGygO8umbPPgvxQLGjitHII16oGRU4FWvggWP2rmBH4XdC4IC18f+Hujr
         ncMxkEN5sgG9QEdmntnYfcHItKlJ+5k5l85LCCba4bK4lSElSRf4wBy0RdnUBpgmPOPL
         j4ZfyfZ5mTwYQ7L05Yiw4HxziUpiQowxEma3W9C3YudpdGvz6A6qxuJ1NmHP5xzqyEGO
         7WSu7W07kO/Lj/kP1UzGHq1nWDta5yi68n1wyAB/KaIjvGGgT5Lp2+4jSDiCjimCZkwd
         aP8UtNYlf8Zwvrc/l0H5Otz4yEaucEGRi4oZj018Fc+Vq4LezpQcZ71zUSyd2+ABkHwD
         oRfg==
X-Gm-Message-State: AOJu0Yz0IJ6xO/zeNhfeI35n0v0+g/dUlz4BagVMR/JtkXNhUBt/mbBY
	ZGBw2+JgqboqowqFnn81l+Xqag==
X-Google-Smtp-Source: AGHT+IHrWg+tHtOUeJqAzEPEceI7hTz+HXDgSXEJUF+8G2DHxqRFa66TgN0/Geq55cErquOFsPCezg==
X-Received: by 2002:a05:6214:300b:b0:66d:1eae:4849 with SMTP id ke11-20020a056214300b00b0066d1eae4849mr98133qvb.8.1698336778578;
        Thu, 26 Oct 2023 09:12:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:e7c4:0:b0:65a:f624:1956 with SMTP id c4-20020a0ce7c4000000b0065af6241956ls145904qvo.2.-pod-prod-09-us;
 Thu, 26 Oct 2023 09:12:58 -0700 (PDT)
X-Received: by 2002:a05:620a:1a0b:b0:76d:96a9:da25 with SMTP id bk11-20020a05620a1a0b00b0076d96a9da25mr22917875qkb.61.1698336777952;
        Thu, 26 Oct 2023 09:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698336777; cv=none;
        d=google.com; s=arc-20160816;
        b=jDxEwcXTGfwvZ3tWMjSHMg2xSw528B0baUQjWJJYDEP15iSSX7rHXnESYyj/rURyNb
         3PT24iIgGr1IGKGArtqcRqcVagn8t5xQGgPbZIYmPJr7b+P1CDjfckUL7k6v99EDrH+l
         yjYIJEp/fqgzoNHRd3u3z63euzhx3yiJfkrUkosx6mR3dXiYTqF8gAYxQuGpxQ5naXIM
         gDNDohUvbszzfPYaj8PPQ6wAyi09F2YcHqYgg/1ZYYgmLa4X8xWcvsZtXRG4PSJHUNae
         kkjakDenlTQ+FeEcFgLLWqF0xHD3GCwww+HnXNtGItWV1+JFsEs5YMxrXOfu8SLA9WqW
         EJtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=y6rn1zQyvCXx3OawRHmLCNRtC0EozRhw5AUrhYMFnns=;
        fh=VyKXAThI+6qSjiPugOOIse8Xpla/smkW2tVZYif5aK4=;
        b=B4tGcPruvpFkkH+/t4cJLso0gcp6wDqAIu1nt5ixqH5dXnQOXh633PmepvoHfruiQE
         Xl5hC7Cyi+571XBwBZr8pVJiQK+SvzOWM+CtD2FNTH7p9Zq+hP1kGAZMf7ZZdBXHWkEZ
         tyXDh5OwJuWaM7QK91HjYNrjW3xHFUHSoj6AZsApYkKQ7J7r6sSbXtIeeWuynzWY82Tx
         bQAVsJl+NLeC3nkjlkMZT6+DbLiSwnmcVSwWYGDPTJGHME0LnE5DgMdynH5Y+fes/NFK
         kQNnk9WJKCKArn1vbSs/DMSacGYR2sT7XEXcH9O/NZoSkhJU4cwEvbR842hayUkdRQXQ
         ZK5w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id i7-20020a05620a144700b007749dc7ce32si9329298qkl.123.2023.10.26.09.12.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 09:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-308-CrywF57vP4mtODIft8QxTA-1; Thu,
 26 Oct 2023 12:12:55 -0400
X-MC-Unique: CrywF57vP4mtODIft8QxTA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A12753810D35
	for <blinux-list@gapps.redhat.com>; Thu, 26 Oct 2023 16:12:54 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9DC64C1596D; Thu, 26 Oct 2023 16:12:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96363C15984
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:12:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72148881C87
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:12:54 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-389-cLpfCcODOfCwqStqd_dz6A-1; Thu,
 26 Oct 2023 12:12:52 -0400
X-MC-Unique: cLpfCcODOfCwqStqd_dz6A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B90DD40508;
	Thu, 26 Oct 2023 12:12:51 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 7C734100B87; Thu, 26 Oct 2023 12:12:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 7AFE41001A6;
	Thu, 26 Oct 2023 12:12:51 -0400 (EDT)
Date: Thu, 26 Oct 2023 12:12:51 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Didier Spaier <didier@slint.fr>
cc: blinux-list@redhat.com
Subject: Re: seeking a sftp site to test a problem?
In-Reply-To: <e5b85119-9e37-439a-aa0d-d77a0a3d970b@slint.fr>
Message-ID: <Pine.LNX.4.64.2310261209260.3065297@users.shellworld.net>
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
 <e5b85119-9e37-439a-aa0d-d77a0a3d970b@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-428152643-1698336771=:3065297"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-428152643-1698336771=:3065297
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

hi,

no none of this is correct.
I use pure dos only because the adaptive tools I personally need only worki=
ng=20
dos.
In 2021, sshdos was updated to include more current dh keys.
When I go to shellworld or my website hosted there via sftp, it=20
connects just fine.
exit though causes a system reboot.
so does bye.
So to narrow down I sought a location where I can test my tools,
  have a username and password, using the same sshdos sftp client.
No reference to windows, so am confused by that.
Understand your security,
Karen



On Thu, 26 Oct 2023, Didier Spaier wrote:

> Sorry Karen, I can't help you there as I access my VPS using a RSA key an=
d a
> passphrase and can't share these credentials at all (they also protect my=
 email
> server).
>
> Just to clarify: you are trying yo reach your site which is running Linux=
 from a
> Windows system, right? I have found a link to sshdos here:
> https://sshdos.sourceforge.net/
> hence my assumption.
>
> If this is correct you could instead try putty, in the hope that the issu=
e comes
> from sshdos itself. I suggest that as according to
> https://en.wikipedia.org/wiki/PuTTY this software includes an sftp client=
 named
> psftp.
>
> Also, out of curiosity, what is shellworld? I couldn't find an answer usi=
ng a
> web search engine.
>
> Cheers,
> Didier
>
> Le 26/10/2023 =C3=A0 15:42, Karen Lewellen a =C3=A9crit=C2=A0:
>> Hi folks,
>> its karen Lewellen.
>> I am having a computer built, with=C2=A0 a problem coming up.=C2=A0 in f=
act I have the
>> same issue on this older machine too, which is why I need your help.
>> When I access my workspace with shellworld, either my personal site one =
or the
>> main one typing exit causes the computer to reboot.
>> The person building the computer has the same issue, typing exit causes =
a reboot.
>> shellworld is my only access point of this kind.
>> What we need is a sftp location, user name and password, where we can te=
st if
>> the issue is general i. e. network card, site specific, or tied to the s=
ftp client.
>> Can anyone share a door?
>> Will likely not need access for=C2=A0 more than 48 hours.Thanks,
>> Karen
>
> --=20
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-428152643-1698336771=:3065297--

