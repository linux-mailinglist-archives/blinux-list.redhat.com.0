Return-Path: <blinux-list+bncBCLPHQH4XEIRB3XIUO5AMGQE5GVMJZA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 920349DBDBA
	for <lists+blinux-list@lfdr.de>; Thu, 28 Nov 2024 23:53:36 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d87d6c09basf10310606d6.3
        for <lists+blinux-list@lfdr.de>; Thu, 28 Nov 2024 14:53:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732834415; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZBxftYBa7szhhkaE2r2nelBrAjaXSfS3mGnq9ytEZ5FKCbdqjzWjYZDl/fRTaoCUQW
         k8dqadPRPPIQ52M1bd4ICkB5uFQzpHF2rKZkhRiQSnnFrhqO4zl23MSL1X+/WDbfIZlK
         N2eqXQL827U1/DRjITNvZC9dezr4CAl/0T5BjoydsEPPwTJoRFT4U2LS4XroBTOH1Uh+
         2PSz+M3QZOESe1f2GDivPbQkXxfiBy8iTstA3mmunw+3ADcn+QtX7oY6mrIlQ5onWReC
         mZPkrbmCLzfD/xDtAfkeLaZ5AG5zPIDmCqdUKToY7tWyKi+2+YbUrT/vYAoEw4OslCvE
         64Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=LlBC09C+LU0K5mC9l4sHj98k8AhIRvYk8igYGJ8gAYI=;
        fh=6/w4MfSY2EICDKgtNFkFeKsANsTNDTUIjaPGy6fSH0A=;
        b=PCDxRgsMeviItd5UpABJ6uTd6Qe07kb0LVcFZGjLrfWrIJ8jPUyVMKNO0iI35yiSBB
         Ymk7e4OpxfXLY7G84KItfhl8L9PJNKlRwSA3UAEtMGcpwqna5FJ/mKGa3LBHx4oDuD3K
         S9wRIQHGjXWY/yhZ//pS+Z5zNxWjXjkn+1P/Pg8+Ug8Gbm4lmY0ldULNA7O1xsuQ+0gW
         bOof8Ttj7y2ivqUfChxLr7lVFzwCDt0ZgVb+yot9MHW73StBLof62HI6vQY24OItFFMT
         YgcxO5svHsSN5U/4mYieFW9iEapCVNDqqUyZsM4ExD+uBYQuuojGDUT0vUc/yRaD4L8q
         Z+kQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732834415; x=1733439215;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LlBC09C+LU0K5mC9l4sHj98k8AhIRvYk8igYGJ8gAYI=;
        b=LdRLjIHqMa3OSSPOIatlM8eFxmrAqkYvRD16RXjPBw9LITIUDUL6FI2N0eogPrAXPg
         ngRfRJaVM1af3YCPqQwS4IveVOYQ7kczFmBiPuiW0iecpG7+Ia/sseKp0zf3qn2vShOt
         ub2TQwEvxSP5QlOU/hxrz7lA3Oa5r6pRtxZXNPdSaqefKKdsOLYIXySxMhFHEvz9N7j/
         RO7mOBSbra63d4pNUN9qUiB5aFHQVGVqwpJwuWe0ecJZntnE42A/mVEM/nDETcHVSlF6
         /oRYKflPMvjFgzPsoLWwPepQinOfK7a+JJRAXjdkHA76C1RWDYKRl0smwwY801+muI34
         w/kg==
X-Forwarded-Encrypted: i=2; AJvYcCVA5Pdmmg9zKKeokOVTDbxHh+ibJOgpe6B+K7VUW7CqC2bovEvTLvJT2ez+xvL+Rly3aNkOMA==@lfdr.de
X-Gm-Message-State: AOJu0YyuVSGFNgTlK4HHijdoZxDDcyToU2Gvd3EOiCuNJh8xLyTtds7g
	C8bevW381yYD/QEIYK1gizpCczFM8s2g/n/LUPPxsd3FsPfTj+rj4gKaqcR3rMQ=
X-Google-Smtp-Source: AGHT+IF42aEj13TMZ8gVBIoM+Z5LPhEDojmQvGt4RaHkYN/KHgG5TeT8WkROX4GgT8DHMcxwQLCcWw==
X-Received: by 2002:a05:622a:1482:b0:466:9388:84d6 with SMTP id d75a77b69052e-466b359e5a4mr155040881cf.21.1732834415089;
        Thu, 28 Nov 2024 14:53:35 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5952:0:b0:466:9db4:d6e3 with SMTP id d75a77b69052e-466c2000210ls20775641cf.1.-pod-prod-01-us;
 Thu, 28 Nov 2024 14:53:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVv6kiyZyWBwX833re3a0kd8tcCw9MoSrjn0zoAwfAZbjbmySzaDJPfGkh4nvYBnUQw17oxp7Z8IPRZgw==@gapps.redhat.com
X-Received: by 2002:a05:620a:27c8:b0:7b6:6d4e:40a7 with SMTP id af79cd13be357-7b67c265cf1mr1557158585a.14.1732834413953;
        Thu, 28 Nov 2024 14:53:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732834413; cv=none;
        d=google.com; s=arc-20240605;
        b=L6LdD8EqpkNNeVLubJdVGA963YbCBJu4lTtqvUBbwhWlYa5cKo1hxSr6Yyj6+25ZCC
         MdBNGUl05L1RyVbn51Lm5twZ0PRxwqgGJj2+ztPe+zw5dyTJRsVncaVXO8Lmo8whgkmZ
         2yTNtIg37Yz5Xi4JljKS6YCu0qymwpbLkomViWemg1BqNbGocrYhGizYtnvxNvLGVsNz
         9KXQNRxkUeqPzpgI81Pel7vgrDNpTo1xxQyYJD2eCLVDVFthW06JmG6haZuNLp3rGAy9
         Wu6zHK3c7nl6G9Qti/M4LF3Gbp6K2kqtC+iFs4KFd13vrgYBodO1lOVO63n6hnfWVtiR
         pqNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=X9p90Tq00YsastaiVXsXDNlz13RjPDagR5PWl4UH/8A=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=EebEL6glgXZMA7hi3sr2GubGz+Cw+tt5UadBGlndh0Rh23Fe8AJCNJyGQaXAUSD/d4
         8M2ozseFpscjahcEUN9LuY5vPhT1a6mDOOlMgjrI24xilc5uwtbUsJwlZ2jfNuXXbKRZ
         CrH9jEdzEJua19R+kiC97aFNOd2VrkAZk+f8tKHgnJFC1YARQE+chTGndTcbjPUAXlWv
         VJebjOyyChV5DySH4gS7a6pbzQcvGc+dFteqqczWtRHSXs7jUWhushMbhAqFMqfr+zK6
         d+0Jxovn7trZ/EIwhUoOM0bCDcQizvSW4ur9g/sebo9+/27/6xE4nFH2mVxhdwrcpw5P
         UenQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b6849e70a2si274688485a.574.2024.11.28.14.53.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 14:53:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-349-DRsHMsrPM7apfkVl1pXCOA-1; Thu,
 28 Nov 2024 17:53:32 -0500
X-MC-Unique: DRsHMsrPM7apfkVl1pXCOA-1
X-Mimecast-MFC-AGG-ID: DRsHMsrPM7apfkVl1pXCOA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D37AB195608A
	for <blinux-list@gapps.redhat.com>; Thu, 28 Nov 2024 22:53:31 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CEF791955D47; Thu, 28 Nov 2024 22:53:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CC6B31955D45
	for <blinux-list@redhat.com>; Thu, 28 Nov 2024 22:53:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 697A6195608B
	for <blinux-list@redhat.com>; Thu, 28 Nov 2024 22:53:31 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-493-4sYptCKLP3ijb5nAnKefQA-1; Thu,
 28 Nov 2024 17:53:28 -0500
X-MC-Unique: 4sYptCKLP3ijb5nAnKefQA-1
X-Mimecast-MFC-AGG-ID: 4sYptCKLP3ijb5nAnKefQA
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 0469C320ED
	for <blinux-list@redhat.com>; Thu, 28 Nov 2024 22:53:27 +0000 (UTC)
Message-ID: <f981c2ee-d0ba-4b5e-9d33-d82ad1266c5a@jasonjgw.net>
Date: Thu, 28 Nov 2024 17:53:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: unable to get external drive to be seen after doing an ubuntu
 install.
To: blinux-list@redhat.com
References: <9d92e5fc-a61d-4e48-a758-d9ea7ab5839e@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <9d92e5fc-a61d-4e48-a758-d9ea7ab5839e@gmail.com>
X-Mimecast-MFC-PROC-ID: XWV1LkTH7dLHKf7l7ca5Ct4par8x5jm5EGe373K44j4_1732834408
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xnUkgjHcAM95o1VyioPUg4sfPyC3RDvhQDZLbCeWfSw_1732834411
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 28/11/24 17:43, Matthew Dyer wrote:
> Now here is the problem.=C2=A0 After reconnecting the seegate external=20
> drive, it no longer shows up when doing an lsblk.=C2=A0 How can I get thi=
s=20
> to work so that I can get back to my debian system?=20

What do your kernel logs show when you connect the USB drive?

You could run journalctl -f before connecting it, or just check the logs=20
afterwards. This should reveal why the drive isn't properly detected.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

