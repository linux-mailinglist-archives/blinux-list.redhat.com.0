Return-Path: <blinux-list+bncBCVPTHE7K4IJBL4KVIDBUBCCTBC2I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4CA7DE5F5
	for <lists+blinux-list@lfdr.de>; Wed,  1 Nov 2023 19:23:13 +0100 (CET)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-d9b9aeb4962sf46957276.3
        for <lists+blinux-list@lfdr.de>; Wed, 01 Nov 2023 11:23:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698862992; x=1699467792;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/e05KPr4YnimI0K3x30fEL456bwKhd2ile9shHDxpaw=;
        b=BcEwYwX3+MYuLl9Ho15IQPIECk97tn6IAvXNbQITeXX/x0qff8SrZ3Spy6xaezzuhd
         ahO/tj3OCo4OI3zXgWYxHwahwYVphPPz22vNfIJSUaQmG9jtZkOX8eM5S+Mp/+3CaOKD
         CJycl6jsoNzMRH18zmJH8qH3+Z199rqYhjvW3DAu54TTx88Cez4wI6YpqlgrRdeo3N60
         EgPg+RPYqmdPIRdbJvRv7clmdrR7evz6Jkon/tLnDqJlD8M1y2bBuynw6smNipptHp4f
         fw1p6AMk0jO0hEZExke8uz7IswzYAWx/zZ00Rr0c1+CDJNFTAsQjSfKKYELobMNE5Zyj
         B0zw==
X-Gm-Message-State: AOJu0YzBDyxT6DimjF6olXBbwecjCcDeLf7GNRz/UnUt1L37jjyUy60t
	BD2aZDyW5JacDRFmG9CRGrXJBQ==
X-Google-Smtp-Source: AGHT+IFRQLJLnc5eM8bXj/p5wUZp1N1hcB1yiGSkrnNQALQNhubkx4CN1Pq/oJ5NhwTz3RxHY7Va5g==
X-Received: by 2002:a25:b97:0:b0:da0:ccd6:b8a2 with SMTP id 145-20020a250b97000000b00da0ccd6b8a2mr15308118ybl.19.1698862992507;
        Wed, 01 Nov 2023 11:23:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:c301:0:b0:d7b:9b5:ba6e with SMTP id t1-20020a25c301000000b00d7b09b5ba6els226954ybf.2.-pod-prod-02-us;
 Wed, 01 Nov 2023 11:23:11 -0700 (PDT)
X-Received: by 2002:a25:d2d1:0:b0:da3:76c1:c779 with SMTP id j200-20020a25d2d1000000b00da376c1c779mr5733287ybg.52.1698862991709;
        Wed, 01 Nov 2023 11:23:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698862991; cv=none;
        d=google.com; s=arc-20160816;
        b=gxHf9JsbI9QagfVi2/AA+qCBvbzm1uFoGFMl+WdbJjrHCl7Rjokcg/JFowHiIykqiv
         LlAWMG55i+yqJ+C7WRqNqLMPUDakMUTdGB2KCpXsBC09l54ifvY9esMKzkJeQ0kR1W2B
         h3mq8W8gj99wIWxM3Pu0pLXD8qbITj+dXSWiY6plR1N8aEg4aDe19AK3yLUrcuEOfezf
         Vbr2OXSGp1zXvcwLbYANwiyH5jOpVeYqabf3nitnwET/RhoSPuYxMbEyShAd/5cGXoJ8
         W8Adm6QKDYievwCqxCGm7bbcKx8X9Lad61ygb8+4cogh5CjhW1RWdJXlnEBU4vNkzZul
         qdEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=/e05KPr4YnimI0K3x30fEL456bwKhd2ile9shHDxpaw=;
        fh=5BGpd9k4y8F62sA2rfcSjN7zgK8lTBpG/Wr3HsCq4Ec=;
        b=g7petNCDtaPGt2tX+O3MZ+Pe/LTKfaSrB3EvkZkvXaR51SltqvvHrJ9t0ivdfe6y8Z
         9ClsEUWTuV9PLxR8Up5RPes6TcDO2ivqM/qsoBYQ0EF7Ox7rMveIdoruV6tYECMHMF5s
         xuPxb7ZnhC302qBTczrzQuRecfLWK97lXmmMaXl/h68DNp800rroTMAaJeKa1SiuPe/w
         pLkF0AzGsdbf5Wqd+7p09iou/kNBaNm6T42O3fHCWT/4XFcHwnuEijZyDkXI6rBuEx06
         DgsfRl9dFKFT4jHFbnqfg0jXbbI3xPdRf/8uOjqC0znwAPLIEnUAS/TY5Z3LPS6z4bds
         HHgw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id x4-20020a0ceb84000000b0065afec14ae3si3083578qvo.579.2023.11.01.11.23.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 11:23:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-648-PqbbXtLSNqqEcbg5RBSajg-1; Wed, 01 Nov 2023 14:23:10 -0400
X-MC-Unique: PqbbXtLSNqqEcbg5RBSajg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0AB88185A781
	for <blinux-list@gapps.redhat.com>; Wed,  1 Nov 2023 18:23:10 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0739E492BFC; Wed,  1 Nov 2023 18:23:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00057492BFA
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 18:23:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C96901C060CB
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 18:23:09 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-12-BMIMaV32Nreo4BrzFVShFw-1; Wed,
 01 Nov 2023 14:23:08 -0400
X-MC-Unique: BMIMaV32Nreo4BrzFVShFw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 8CE9540508;
	Wed,  1 Nov 2023 14:23:07 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 4048B1001B8; Wed,  1 Nov 2023 14:23:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 3EE911001AA;
	Wed,  1 Nov 2023 14:23:07 -0400 (EDT)
Date: Wed, 1 Nov 2023 14:23:07 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tim Chase <blinux.list@thechases.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: simple 7zip extract command?
In-Reply-To: <ZUKVDwfPu22GQ_6e@thechases.com>
Message-ID: <Pine.LNX.4.64.2311011420460.3176984@users.shellworld.net>
References: <Pine.LNX.4.64.2311011208480.3174618@users.shellworld.net>
 <ZUJ-iVvXdYAijXS3@thechases.com> <Pine.LNX.4.64.2311011326200.3176199@users.shellworld.net>
 <ZUKVDwfPu22GQ_6e@thechases.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
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

okay then.
Let me see if I can locate the actual 7z executable itself, pull it out of 
whatever sub directory it is in, and place it where it can be typed from my 
dos command line.
I am not concerned about overwriting anything, thanks for confirming my 
placing contents into a sub directory on its own is best though.



On Wed, 1 Nov 2023, Tim Chase wrote:

> Tim again.  You're correct.
>
> If you're concerned about what it will do when you uncompress it,
> I'd make a subdirectory, move the .7z file in there, and decompress
> it there.  If for some reason there are other files in it, they
> won't litter your current directory.  That would be the value of
> listing the archive contents first, to see if there's one file or
> multiple files contained in the archive, or if the file(s) reside
> within a subdirectory in the archive, so unpacking them will keep
> them contained rather than littering your current working directory.
> If it puts them in a subdirectory, fine; if it doesn't, creating
> one before unpacking the archive can prevent it from overwriting
> things of import. You can then always use regular commands like
> "mv" (or "move" in DOS) to move the files back up one level if you
> need.
>
> -tim
>
> On 2023-11-01 13:31, Karen Lewellen wrote:
>> Hi there,
>> Given the file  is of wordperfect from a reliable source, I feel confident
>> it is fine, having no desire to list the files in the program.
>> so, I can run
>> 7z t c:\corel\corelw62.7z
>>
>>  and test the archive integrity,
>> then 7z x c:\corel\corelw62.7z
>> to extract the file into the corel directory?
>> thanks much!
>>
>>
>>
>> On Wed, 1 Nov 2023, Tim Chase wrote:
>>
>>> Tim here.  The command-line iterface should speak pretty well.  You
>>> can use the "t" command to "test" the archive's integrity
>>>
>>> $ 7z t my_archive.7z
>>>
>>> or the "l" command to list the files in the archive before extracting
>>> them:
>>>
>>> $ 7z l my_archive.7z
>>>
>>> Once you know the contents are what you expect, you can use the "x"
>>> command you showed to extract the files:
>>>
>>> $ 7z x my_archive.7z
>>>
>>> The output is a bit verbose with some copyright info, archive
>>> self-integrity testing, and some stats about the archive. But all
>>> the output should be pretty speakable.
>>>
>>> -tim
>>>
>>>
>>> On 2023-11-01 12:12, Karen Lewellen wrote:
>>>> Hi All,
>>>> imagine some here use 7zip to extract files in Linux.
>>>> I have an archive of a program that I want to extract, keeping all of the
>>>> sub directories in tact.
>>>> The file  was compressed with 7zip, that I have not used before.
>>>> My google  suggests  something like
>>>> 7z x file.7z
>>>> will do the trick, but wanted to ask as I am unsure how well the program
>>>> will speak.
>>>> ideas?
>>>> Thanks,
>>>> Karen
>>>>
>>>>
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>>>
>>>
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

