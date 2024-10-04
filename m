Return-Path: <blinux-list+bncBCMKFVG4RQEBBJ4DQG4AMGQEZXOT6QI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 659C5990E23
	for <lists+blinux-list@lfdr.de>; Fri,  4 Oct 2024 21:27:37 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6cb4180fab6sf44466436d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 04 Oct 2024 12:27:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728070056; cv=pass;
        d=google.com; s=arc-20240605;
        b=P4SRJOnDfjkEns7+9km+nmnh5u7admN413WwAMYxzqC+JKVoeueTt4eQVpVfAyj6Sl
         mM/sQ1wXKUV+IhATWEZBd0bM8fdEN/YTNQlZDLHXxqxXj+B1lONkJ021dIdduawRKhRo
         nQuJxKhGyk2FFiW4V0TqY7r0YMw1gTZILS36YXeC3XQNUGScjakNBcPw1l6+Go6tV1LT
         kKudHA5HKKCSZS3MgiaeSa3C3YGg/9TtSXVhvhEly2X5ZGtmBb4VWyA4Xkz1pDof+eSc
         fhHlEAtmvCeQGU2EGSXqzMXrOty5prDErqD3HOgU3Z7Q47lZjESM+azAyVbv9btzGwRF
         Ioog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:autocrypt:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=SbbSTV6gQO0Fx3l77bTUrlsB6nXzNLDwzGKbbOhEZRA=;
        fh=SiqskkMawGcBZOBUGatASBoiMPz+imDOzu0tGLCLXjg=;
        b=Jp8bbnCMIXOE3uvLziE3Jyd5n0WEWgbmYppTcYtxnS89SAeWfHo7HBpdx2a3ESfjiQ
         jA0L/z0kuQEbBtmUqM+ZNpyKZt+nchp1w9AIRVtSBWovo8SQsZ7VB5I/2vmcyL37O9Rr
         mTKgyFg1GhWg5tlW/4eTHBX6/jsJX0nPpo/RTW1n9T5ufIYGJkoM/aGI5x0LLRZTDyhP
         ze2XkTnfN/vnhCVcccoeF6qVu0eOVBSCN4y4eicXyG91KXm2kjyhuIKr5vLmeTIKWoM2
         RiodMDttY3BE/0ignBjZ/Y0iSgKvpAIBOfJOmstlJk2E1XU+yESUO3KIWdd7xaGZPcZn
         XJbw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728070056; x=1728674856;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SbbSTV6gQO0Fx3l77bTUrlsB6nXzNLDwzGKbbOhEZRA=;
        b=U6GVWYFY3sF6fQEm2lSJXn8P0yMvP593Vrf3+PL2a/hH2X+6ldTVZqEBhcCDAZzd/n
         A6sS489ZFhT1SvClN9TySwo0zlNN4ob/Hy9a0t26xh8bl9CRoxqmdJ+HVEtKa6dq73LQ
         Sv+QHfGvHII3n6H45hvb77kqmm4vsfC63gKse2h3R+ghJYyZTPl2dTogmHKi3Vacai8d
         ZpSpCazxaO9F5Dgssb2ChBDbxeOG3FqyFN+nIq2aUvBRBCPCj3EP6vtAfXqe+PVHP8d4
         6TA8pJlVuxw1JpMMo8pxdNgXAPgYw8ZF9191NvRbeuAv1Yl0mGsEeHayOCsdTBLw5XG1
         uSZw==
X-Forwarded-Encrypted: i=2; AJvYcCWwcMqjaVtACBoipoIumbwkGCWjb3Lh+PDiN9NeLR2jhG6md5+eBkRxcQoluXZRnpxZMyCGSg==@lfdr.de
X-Gm-Message-State: AOJu0YySNhm+pR31eu+Q2jsNmTWtNRr3daSqF7YQ5ogBrWBPXUFvkQdN
	cZ9BeCGWRHjeGhy4go3rTroicGwJkCCKHiqDTRdUGoJH8Zf02zMQxA5MpFJY37w=
X-Google-Smtp-Source: AGHT+IG+Bt651zOeAHN5uPRSdBbHepqqyAuNGOEVhcUXBEsBTatEVy3LlyAVEipnh3P29N91n2NMoQ==
X-Received: by 2002:a05:6214:1642:b0:6cb:a3a8:9444 with SMTP id 6a1803df08f44-6cba3a89454mr14804376d6.4.1728070056080;
        Fri, 04 Oct 2024 12:27:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5f06:0:b0:6b0:862d:9779 with SMTP id 6a1803df08f44-6cb8fe22e17ls14626496d6.0.-pod-prod-04-us;
 Fri, 04 Oct 2024 12:27:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXa4XHCuSQBAcwJbOiZGmVGuLuAw6gYlBqKJjon9MH1xuLvna0boi/GuNHNdpZ5LtEah7qqxJBq7N0nTA==@gapps.redhat.com
X-Received: by 2002:a05:6214:5889:b0:6c7:c645:f0fb with SMTP id 6a1803df08f44-6cb9a3096aemr64120076d6.18.1728070055065;
        Fri, 04 Oct 2024 12:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728070055; cv=none;
        d=google.com; s=arc-20240605;
        b=FgnGeF46bqo3OPn4IYXsyzdYpxxUKUoRJd/OzGFTlgtpdJf7rz1FMCm9odYYixEfWj
         q17JKj90Eu+Qbp/g5YqXxoEWWNjWyeyekFWd4TqMRun9OP0c0vSq7xkUggD6OyHon6/J
         IMfKbn/nW1qQuVOxJ+2NcvNUBK+EHnun1yOKTXLcBp5pioNamwgZZHkKSmW9z++4Fd4w
         IdLaw7rwkn8x4X6oQo38VogT2utauLpBHUQ5VYhg4Z2idjV8P6cEgBTuzos8RLlFx3ar
         O/GXoLKbpGBR9551Jh5FXXHESQDwIOzhPEL5VZusH20OJNro9E4ZSsOP6WkaT2xwGJf4
         9l+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=D0WxtwcT7BRmR8a+hcX8SNoO0ZjlWNpBO2SIcQGNka4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=P9FdcloRWOUc+SONKjgqoK8w0DEprJiV/pSxQrm80+XAdUmykStvIH2M1ZPjvYM0sT
         HYYx175OpTFE/MZzVLo1TjML7RUMLlDb+OhDcSAVOHq+PsFu68xjd7MAN42PtpdaEj/O
         mmKsUFZyQh6EsavvneGMxDblOKByp/+knwA8j8Xuf2XnP/XLlz48R8naQc/EK+sjQZrU
         kjNHT3XU5neqy0CHkKYq8f368v7NAcjZgt7C24pWMeBJ9RIc4hDoob4HOE95pQBpv9/k
         BXPsoaAbSl+e5Nb2pirxUFQVfGRaQEuGpfg6ualDRXhNMFXUK7xUzegT622KPgNicvWf
         tI1Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6cba47a7672si4824666d6.565.2024.10.04.12.27.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 12:27:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-422-iIK-rv_kOfORb3XHCJMrcQ-1; Fri,
 04 Oct 2024 15:27:33 -0400
X-MC-Unique: iIK-rv_kOfORb3XHCJMrcQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CA2841955DC8
	for <blinux-list@gapps.redhat.com>; Fri,  4 Oct 2024 19:27:32 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C42A51955F43; Fri,  4 Oct 2024 19:27:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C191C1955F42
	for <blinux-list@redhat.com>; Fri,  4 Oct 2024 19:27:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3C212195604F
	for <blinux-list@redhat.com>; Fri,  4 Oct 2024 19:27:32 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-284-wqae9bDmPLWipz_36wX3Zg-1; Fri,
 04 Oct 2024 15:27:30 -0400
X-MC-Unique: wqae9bDmPLWipz_36wX3Zg-1
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1C90962B67
	for <blinux-list@redhat.com>; Fri,  4 Oct 2024 21:22:28 +0200 (CEST)
Message-ID: <e2eb147a-83aa-4d50-a054-90738b3ca86a@slint.fr>
Date: Fri, 4 Oct 2024 21:26:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Has Any1 Ported TalkBack to Linux?
To: blinux-list@redhat.com
References: <113a028f-ec9a-7168-756a-6026111be747@hubert-humphrey.com>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <113a028f-ec9a-7168-756a-6026111be747@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
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
AFAIK no, TalkBack exists only for Android.
Cheers,
Didier

On 10/4/24 18:40, Chime Hart wrote:
> Hi All: Tomorrow we will be setting up my new Google TV Streamer, which will
> have TalkBack, which got me wondering first why we cannot seem to install on a
> Chromebook, and 2nd would TalkBack be an option in Debian? In running several
> duckduck searches, I see a github page of fos. I have no idea what that
> is-and-like many github pages, there were no direct downloads nor any git clone
> commands? Thanks so much in advance
> Chime
> 
> To unsubscribe from this group and stop receiving emails from it, send an email
> to blinux-list+unsubscribe@redhat.com.
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

