Return-Path: <blinux-list+bncBCVPTHE7K4IIXSOWWQDBUBHFYNTMU@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E43B931D35
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 00:37:01 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b5e4cbab05sf77142626d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 15:37:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721083020; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3gw5Bh1+BKJuRWEJ4mx1qrMYHvcxjuZIkRq2tzZO0/IxgmzU7ic3zFBoMDpILW365
         SSCc35T/d7bSmFCLPATqa6z203UcAXK+h9eE6qPr7UHVeDf5K/DKPVNqEr+9KM9iwgha
         cn1LcLvUd+xIl12BLnDRFYOmb7lt9hfAw5O9b59MEZzNoa4EjPfZXrHc6cCcaWGjrwzk
         QmPlDmwHrpwvs/i0p0vJPbeRC9RjwhWFdtUaXCZgEUeict4LXhCwiXNHv44STE7HeebG
         mUuBMF68WVufO6h5c87efMqXwUOQEDbnxtgA6AU6llFxSXQgEfb74UHumC1PY5M8WvgP
         VPCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=aHDR+R6vSvbnqMYTsO6dmr98VeKz8Ooj1zWeDb4//l0=;
        fh=q76B5nsOhUwk5NIxNR2PvsoHHfaxRdLUKE7kxNtieEs=;
        b=ZsoCPjGgq9zNppbVEjjEo1MJ/FgRJlMFxgliKJhf2n7JF3hFQ2pw+tMKdangsrNXu5
         pqHFiygePLdHoUdXNqMSsvfJpjmtzXzB0lrsabN66pxKTklxCHPUGdRzE6vdVy79mcc0
         XGnCu7AGGmuFIHJocfDWH9ZEeEn2PRbmxBpv8Tn990Z6tzWVXh/2thgmzCCC+CueYdOj
         xln0Sxh1YWQyi/F4Ktb+Dx16nb3dSThafGCG7QqgQCgPaJJFq0yeN80j9L87bQl5UuLB
         5328TPbR+Lcfc+7n4vISqCV4RzhyA3RVu3ZMfIpNtzd/wQUEEEvsdLnxZefD/Z7SFVMp
         rvRg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721083020; x=1721687820;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aHDR+R6vSvbnqMYTsO6dmr98VeKz8Ooj1zWeDb4//l0=;
        b=Qhl/VUZpnq9A5Eue2zxQCYDIZzpvYlzuJ5aKoRxvukiv8QtuahMHhnnVd8GFMn6JoA
         JMt2S1jgeMMm3fUJaBZPUbQvvJUI5CUz45v0dOtmu3RO3WGvVPzlB9OVfsL7NQ19D+vi
         2QTmNIXe0dYZi3zZSm/957ugFZNhkZMXjTUAM7EqSNSOpdDvMCGW/1p3UAPOWY/2TqQ0
         8zAZqlNPNcASc6efZw5dOg7h20CKlo05pC+sdERYsSQdCAenE1Uptlg7V+BLFxEmJzVk
         tJ6TNj5GVPz6JuJqkxkPFqmPtnmQZwB7+dgdhSRog7kxYDT7E91j8TK1ZsXzf04irGgp
         aYhA==
X-Forwarded-Encrypted: i=2; AJvYcCWuoqnovF+q4bxaSVSPzW5EZd4gXwojsmi396SyMeURig3Cvkgr/OA303aefzoDLcIE+D2hKl1IxpzaYO7NmCvqws+mQbE2wV21
X-Gm-Message-State: AOJu0YwCE20HQSiPFX9lyAWxaDFhu/ODPbghLvbhn6ZXrBI5vW8eceVB
	q3QksImK4hXPSUkCH4I3XZ4H9FM3swAugowfEsTs+q88Ar4vR9CHokxbKPVUVrk=
X-Google-Smtp-Source: AGHT+IGO8o8yGTwrLmuICM8kFdF6tes+awj7+dPlKi8C6E86BXuyC0AehAuM+dz9cqECoHH1q7hMTA==
X-Received: by 2002:a05:6214:2689:b0:6b5:e665:7f1 with SMTP id 6a1803df08f44-6b77f4ecd46mr10417976d6.14.1721083020013;
        Mon, 15 Jul 2024 15:37:00 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4d45:0:b0:6b0:862d:9779 with SMTP id 6a1803df08f44-6b74b328189ls78330246d6.0.-pod-prod-04-us;
 Mon, 15 Jul 2024 15:36:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXTepg43aUee/I9K9K7KWWwiUTVQure6cAMwuWiezziG594zn7N6bzdEp+7s/lkM3t5X5x+u3cWB7TLBDIDYskvfz6CVUqVu+PZofJW
X-Received: by 2002:ad4:5aaa:0:b0:6b2:a467:88e with SMTP id 6a1803df08f44-6b77f510ad3mr7407766d6.24.1721083019289;
        Mon, 15 Jul 2024 15:36:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721083019; cv=none;
        d=google.com; s=arc-20160816;
        b=f17v+Jf6cMOGB0q3ijnZ0MjMp2QNvamuHupH3DSkzgngPTiX/+PGTj6MbOUJXk00P9
         60mTfGyRrYPJiOCY3Oi+Djk+wjmT6jmbW9ojtYciZPW7lNohWfslsAFp7AmVHc83tkvP
         nA21rNoMkI5wmfuzvLY4OXC9NGCOc1xax4yDZ6QdGbJnvSorYOclKGAvj8Muyd/GAn7D
         0Fdn6RoQyeVn/8+7vjxkb1VqfwHamFd5DGQqM7n8B/x7plEA+5QyQl7kiuiU8Qo/vFNH
         a+kyQv6WH8xQCT66kZB5vTaw3hBfTS7D8KXfOJJwcj1+zWn2bPEfDZkKQZbRdokdnxLm
         c0ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=aHDR+R6vSvbnqMYTsO6dmr98VeKz8Ooj1zWeDb4//l0=;
        fh=5BGpd9k4y8F62sA2rfcSjN7zgK8lTBpG/Wr3HsCq4Ec=;
        b=YKT2jTx54Ng2rOkIIjocCRsp1w/ioZ+teWjkLgbuPXz8JZg1iZ6tXa6WsUEh1dHYfS
         a6sQDuxgIBEq1yPzyGYK3AmhcAVSnJ0Nc+WyzvqVTBoH3VqgjNKaiYAvRxknEVu/zzVA
         tgWW1UG7dWZxKU8UIwPtNqbypQybYjQyJ87BE7eJE3TJFPiLhyylkrRIXe6j+PZM4zSp
         RCJjMUVGTt/Nx2Cpb3KQeRmhVhsduYTixynW9RqePiU46X2NBsXn25wGDO3fKy8K/UUi
         gbNhnrYDNrh0hD3FqsRkQtxWPTHby3E7q/VDDxl+iT6sgSP73ljyxvdDIdmE4364V9V+
         XIqw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b76194fd33si62054666d6.106.2024.07.15.15.36.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 15:36:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-635-P8yDByMuO0e1dD7pxNowfg-1; Mon,
 15 Jul 2024 18:36:56 -0400
X-MC-Unique: P8yDByMuO0e1dD7pxNowfg-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E2BE31955D44
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 22:36:55 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D2A1B1955F3B; Mon, 15 Jul 2024 22:36:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D037F1955F40
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 22:36:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6A0C719560AA
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 22:36:55 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-133-LlC5JynWN3yO-VkxUv7y5w-1; Mon,
 15 Jul 2024 18:36:53 -0400
X-MC-Unique: LlC5JynWN3yO-VkxUv7y5w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 887384050A;
	Mon, 15 Jul 2024 18:36:52 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 5627E1001B4; Mon, 15 Jul 2024 18:36:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 55C741001B0;
	Mon, 15 Jul 2024 18:36:52 -0400 (EDT)
Date: Mon, 15 Jul 2024 18:36:52 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tim Chase <blinux.list@thechases.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <ZpWi5d1A4TkwT3n2@thechases.com>
Message-ID: <Pine.LNX.4.64.2407151835130.3551659@users.shellworld.net>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
 <ZpWWPBC3szmpqODv@thechases.com> <Pine.LNX.4.64.2407151750350.3550890@users.shellworld.net>
 <ZpWi5d1A4TkwT3n2@thechases.com>
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

Tim,
Sorry if I am being a moose feather, but I do not use Linux.
as I am sharing the data, i. e. want it saved in a file, do I need the 
Install-print part of the command?



On Mon, 15 Jul 2024, Tim Chase wrote:

>  $ dpkg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt
>
> The "dpkg --get-selections" lists all of the packages, then the
> "awk" portion filters it to those that are currently installed, and
> prints the package-name.  The results can be dumped to the screen,
> sent to a file (as above) or piped to "less" for review, whichever
> you prefer.
>
> -tim
>
> On 2024-07-15 17:53, Karen Lewellen wrote:
>> Hi Tim,
>> the goal would indeed be currently installed packages, seems to be Debian,
>> as dpkg seems to be here.
>> may I have the command for  installed packages again?
>> here it starts with dkg, and I want to be sure this is not a typo.
>>
>>
>>
>> On Mon, 15 Jul 2024, Tim Chase wrote:
>>
>>>>> If the server is running an RPM-based distribution, then rpm -qa, but it
>>>>> will likely print out a list of thousands of packages
>>>>
>>>> Is there a way to copy output into a file?
>>>
>>> The usual Unix way:
>>>
>>> $ rpm -qa > list_of_packages.txt
>>>
>>> and you can then review "list_of_packages.txt" as you see fit.
>>>
>>> If it's a Debian-based system, you can use "dpkg" to obtain similar
>>> info:
>>>
>>> $ dpkg --get-selections > list_of_packages.txt
>>>
>>> which will include all installed and installed-but-then-uninstalled
>>> packages.  If you only want the currently-installed packages, you
>>> can use
>>>
>>> $ dpkg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt
>>>
>>> -tim
>>>
>>>
>>>
>>>
>>>
>>
>

