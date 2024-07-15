Return-Path: <blinux-list+bncBCVPTHE7K4IMLNGWWQDBUBENHMZXC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 02089931CCD
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 23:53:11 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-79f1a81bd7fsf711576485a.3
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 14:53:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721080390; cv=pass;
        d=google.com; s=arc-20160816;
        b=oHxWFO+KWF4xno1gNbo175UlyKsDGdY8JXljwGSQS64UtX6L2BQh5aO0sHvECfzDDm
         wrGsf/DbH6vBvwy4rb24ZIdg35l0GVnU7Bchv3wYCwNCGj6vvMdCClt5psxo79dRvc5K
         82QjevBm0G8S/Wh2pbnefwrxyWxz6AQRK5nfBHYG/2P9zfBIt+37UMgDYhFY/VKVXole
         ImsQy9J0z9PH3zr38bXMbBDr7tLjPahK7Oy0CEId08yo8R+7M/FWRlgAVoEK6tKJ3eJu
         S+wJjgm3t7v5DD+URB4piQ2NuCTqamHSsQUqK8fdydPySb6gImxKsOgvpkEVUsrm8WI7
         emdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=l2lNeKcehtxSj7d5ujNtvi9m30q2lKjrHQNMSDVH28w=;
        fh=qV2tXKSSX5OJxfsVOMlm5aByDS5DPAYIJVBaCRMopy8=;
        b=w0pv7t2+JmsbY1hGo6OX5HDne3JuHAs9nlg0sFDKnyVDBrdDEHUN8Lp3zDgYtAhrff
         tqNs5PsGUF4oKqV0luLD0XrtGt5QWrzWelpSp9QGjt1c8A2nILbfV8jKnnkm34SCtLeF
         3fiL8Ty/Cfot5WOjXYKhSkq1bP8O6oidM+CT4uz4BX5OoH9g5N6x8OjNcE3u5tesZC+2
         yzuc5oH/1y36xeE+4cBGYthURrK+vphMOIUcXBtRAjDp936H8vwkBnrtrbAwl+RDTly+
         u/1s2PPDQQqxpVraW5MSFoeJRFbmrMlN7AFKkWrRz6Jy6N9Pi16vSSuZC1V5Q3u6qLdr
         qXTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721080390; x=1721685190;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l2lNeKcehtxSj7d5ujNtvi9m30q2lKjrHQNMSDVH28w=;
        b=jmbzWoHTtQOUTg2DuolO7fbp/yHVdbArdL87Y30h3zUWdlvCJxRiZvM3Rj/0jQgmFb
         J7ZhEdtMaR0kAHAyWXEoIGpOc6kmThDNSh7MNDBhYXJ94Y3lWQdeBBzy7jKwjPq1njh0
         dOQJaDr4nAD+U6QAB0l4loyKbumsN3yQFRdrOo2hMryFp70ty3QpgmaJdgIQyB76jliD
         sXKDRClqGzygktN2Bbws0D8XzcCLzFrCQpJOfHPWW+mp42HX5CCzbAWzvrjcSJ09iEvK
         INHUOb44SutwnpKjHp7/4cPP5LrCfWorwbqOdJU6puoXpCFJ3nxPQG4IK2Ufik3gmyyO
         15Gw==
X-Forwarded-Encrypted: i=2; AJvYcCWU+8+Xbfxb9NeX85/BIZVNvP84Ez3LaEKPeX/HmZPCBRfaHE6ln7wF9varwGvw/kmB+W5RVBijE4AaGSaYBEKT6C+qIpEcG8j2
X-Gm-Message-State: AOJu0YzNIKvOkZAycASkKdPeT0aZOWdxVEFNAG/7ORt8mVcC2tjIn98N
	PH0Dkp4dTYF3Ui3PieF+UbOfJYxvK8MhJQ9kzDA0pwH0I/L7CodYqiKdEAGUTAE=
X-Google-Smtp-Source: AGHT+IF5lxqg6E6Y4zVXw3Yj9R3D6OdvH29eKxsR72rsIgf9sqjFuzIgI7FIFcyGd8i9IYvXglq5JQ==
X-Received: by 2002:a05:620a:1a0f:b0:79f:14de:2a27 with SMTP id af79cd13be357-7a17b6df0e1mr45922585a.36.1721080389438;
        Mon, 15 Jul 2024 14:53:09 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7341:0:b0:447:f206:4e7c with SMTP id d75a77b69052e-44d0885ea47ls70740471cf.2.-pod-prod-07-us;
 Mon, 15 Jul 2024 14:53:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXMZLxdEZ1Gq4hN8RDMK30odd0PTeQFS0dG3EN1ZgBw+geLG89nIX/7rJmfrJoaptgpsuNcTzY0gEnm3xsEiVitTWt2YvPFJ+N2tVCP
X-Received: by 2002:a05:620a:2449:b0:79f:c9e:6269 with SMTP id af79cd13be357-7a17b6df010mr35488885a.37.1721080388727;
        Mon, 15 Jul 2024 14:53:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721080388; cv=none;
        d=google.com; s=arc-20160816;
        b=hSt99aqKmWAq8T8kd8Ky7g+b6GpU5EAGqR/+d1A2crSUNHlcMKVXfgUJQmwnoF7TLe
         GUKrtyQzhn3biA8jaO0ZXiBjg1JcEt6ScLKmEt9rhWG4T+AYFYZ+0AiS2I3WoCUAVyiF
         TUWx8ninB4wWqBVnUBtcyH1S8YIeYNUT+WPrG6tyX6GwVDiD8zUvt9sZQwsrqBdxCnSq
         N4FFRCNPjjg3bWmpLcbxgl+0eEcryEC5+hkcJxKvZuc9XfFMaFJ/ZTrtz90QLd7TWDOm
         VflyhwJ+NrlWVgtMrVFbWjQvcQwULsc5FekgEkZhyzShtWkJBDllsAgkQ3G2A6V1ZL8i
         uUAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=l2lNeKcehtxSj7d5ujNtvi9m30q2lKjrHQNMSDVH28w=;
        fh=5BGpd9k4y8F62sA2rfcSjN7zgK8lTBpG/Wr3HsCq4Ec=;
        b=Vhy2ogZHYH/mm3ViFh3ehPMwA1BifDf602z7yZGavqkNplndp7xkXO9wV4RkcqjTVK
         K0anmN5PyYShXbl2jpcypo/vDg3Xf1ouWEYYE6C0O729u4UXUI9Y2rGXI3ss2R7X6vYR
         p9UdN6H7CqAM7ArpEaGHAqlOjrlVFZENxmvLjJjgcQXwelehgQeb2z8SnLThUIEQCKzS
         rg73x+f8GGr6D9q6Ht1BkJNM24rhkINcPs+eHZNOjsUJxP9W04xuGQIEptQeRNJ9FSgC
         XToz4rPy5K0E2VCz2jyqcG/e6xT1inyy3/t6DOCBXvSDfWPgN/f5b5evsDhPxDytPhKY
         bwJg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a160b7ace4si614888785a.61.2024.07.15.14.53.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 14:53:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-593-G2LkTETAMOCda67xW7qWgg-1; Mon,
 15 Jul 2024 17:53:06 -0400
X-MC-Unique: G2LkTETAMOCda67xW7qWgg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D51E719560BF
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 21:53:05 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C4224300018E; Mon, 15 Jul 2024 21:53:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C17A6300018D
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:53:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3558A1955D42
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:53:05 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-556-8pSWEyG3O9Cwq1hwaSmkZw-1; Mon,
 15 Jul 2024 17:53:03 -0400
X-MC-Unique: 8pSWEyG3O9Cwq1hwaSmkZw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 89A0640508;
	Mon, 15 Jul 2024 17:53:02 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 4F4121001B4; Mon, 15 Jul 2024 17:53:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 4D86B1001B0;
	Mon, 15 Jul 2024 17:53:02 -0400 (EDT)
Date: Mon, 15 Jul 2024 17:53:02 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tim Chase <blinux.list@thechases.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <ZpWWPBC3szmpqODv@thechases.com>
Message-ID: <Pine.LNX.4.64.2407151750350.3550890@users.shellworld.net>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
 <ZpWWPBC3szmpqODv@thechases.com>
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

Hi Tim,
the goal would indeed be currently installed packages, seems to be Debian, 
as dpkg seems to be here.
may I have the command for  installed packages again?
here it starts with dkg, and I want to be sure this is not a typo.



On Mon, 15 Jul 2024, Tim Chase wrote:

>>> If the server is running an RPM-based distribution, then rpm -qa, but it
>>> will likely print out a list of thousands of packages
>>
>> Is there a way to copy output into a file?
>
> The usual Unix way:
>
>  $ rpm -qa > list_of_packages.txt
>
> and you can then review "list_of_packages.txt" as you see fit.
>
> If it's a Debian-based system, you can use "dpkg" to obtain similar
> info:
>
>  $ dpkg --get-selections > list_of_packages.txt
>
> which will include all installed and installed-but-then-uninstalled
> packages.  If you only want the currently-installed packages, you
> can use
>
>  $ dpg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt
>
> -tim
>
>
>
>
>

