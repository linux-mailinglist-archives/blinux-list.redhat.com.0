Return-Path: <blinux-list+bncBCLPHQH4XEIRBOWI3KUQMGQENX4H7PQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ACC7D3CD7
	for <lists+blinux-list@lfdr.de>; Mon, 23 Oct 2023 18:50:05 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cdc542b56sf41266451cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 23 Oct 2023 09:50:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698079804; cv=pass;
        d=google.com; s=arc-20160816;
        b=ap6LA5zpbRM1VieVlQT/TCrU8KzKZhRXV3P2BY/KKlzMDfGoQT8xkbvCA/fC3iyBhJ
         L1blS3CleBhLvTVcG/ELRAGzs+TwGjVLfra+PC0IGe4Nd9LcMdzoKf3nwzEPd4ClAMIC
         g3mEo6pHVZByzpxHm2BuAHbONbJsKtYsSAMw3+XiKvYmQ8i95I8tkxjokxUdUEJrXCmh
         JJxVFe+Y/ki0/V+FivpjTddqDtDOBX0VKd99QhGzHJHK06QtnNSCSMRyb33UtM/XOcTz
         3ISBnZzKWFUfUChQzIiWEWBi8g19bmm0uYsgLfpXoRU5p2ADFBx8F4Q5w4S9PD2ZMega
         HS+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=16MzfwA9bZsw3xNp3R6j4qxTk5w3H1ZK/P0n2UDrCso=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Z2pkBvp3jqu9y22UFtSEJeohyTAbwU56OE6PfFyXO8EGrIRBoxiarLrQk/pUvAHern
         /mgTWVBMZ0Q9UZddpl8HiIm5hTgdhVpUDMc6xcs8mO+SMpX9+l0PlU8pzFF5Pk3NBnA6
         hv6nSCDv6jQoA/58h4MCqfa81Li/IFHPxobs2W/U/ToIk/JmUilnVvtyWnMEeqNsZU8d
         eFDbrwKNl8fc43gtU6W5fcRzJkjfFxcLeUf6EaD7Af4eWrLGaK7aYRlQpwM5rRaKU3cx
         ZAfovTsnanLk62Sk/1JOIarSCGvzkuscId6u7Ei04/R8h9HNw2G3GGhoqTpXJxYeliNu
         GmVQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698079804; x=1698684604;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=16MzfwA9bZsw3xNp3R6j4qxTk5w3H1ZK/P0n2UDrCso=;
        b=ZutHWY2HM7WS2J6Kry+bwlI5zqWYfXoBDh47X3gO/Ym/yRlL82iF2SfEI+5TDrgPXm
         ZQm60RWrGZCNlwesYXvI8u1GN30+AO3v1diybnhtdZx6sjjO8ilRhHmDf3tQn0WQNtaz
         O+dBAksfnVa4GJTEKAehBEGgd750YMEQiIFeS9MMiRJSnIBYCPfxGRgXVah8Nc4jkTtu
         m8AoaJ503sUPYlmaTQ/OgFGIrH7QzoXSS9cen3FeugFmjUHJSRzLa5ba9fxGssmn1mIx
         FaMBzlhMn72mg45w/hN2geeKY/ZqFRJxdmo4vqTy9Ttsx5dFvlhAM3gmzsSljF6Ritfp
         rAYQ==
X-Gm-Message-State: AOJu0YxAjIlGIwxdg+Budwl2S4nqPYWMEo88PVi7CNNAdMmEdseEfr1w
	u8S7NAGEiquKHKQOP1BzieHELg==
X-Google-Smtp-Source: AGHT+IH7NE5WIjmIn4pYVJRHbeOCIfK7BqAe06iXmAkwnTemvRCxEaW+92A5LW4xM3bNUXzfKgMoSA==
X-Received: by 2002:a05:622a:1313:b0:418:1f52:1421 with SMTP id v19-20020a05622a131300b004181f521421mr11127360qtk.9.1698079803600;
        Mon, 23 Oct 2023 09:50:03 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1e17:b0:41b:ca1:7e24 with SMTP id
 br23-20020a05622a1e1700b0041b0ca17e24ls404840qtb.0.-pod-prod-05-us; Mon, 23
 Oct 2023 09:50:02 -0700 (PDT)
X-Received: by 2002:ac8:5fc9:0:b0:41c:c2db:217e with SMTP id k9-20020ac85fc9000000b0041cc2db217emr13284021qta.46.1698079802152;
        Mon, 23 Oct 2023 09:50:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698079802; cv=none;
        d=google.com; s=arc-20160816;
        b=zq+53n9DVnWRYD3If1C0Z52CCBv291tVl6A+yYk8urAre2X4BC0QxbHvUweRndVmA+
         crrRl9Ad9y8pY+ss51yX1WevpRNOwlYvqUkn8yOBxoYY84YupyZ9TYSKNhbYVAH2mPF8
         bbcPvIXwBrIHuBPtQmR7OM2A91g/nTQ+3gebGBfReO8ueemJ1u3lkS+D7T1P+XznXSNR
         qyV4xBsrxHNl/gF1JdABcox4Om0v+YRT7k63Xkan1nq4qAQywXPsT/8p7wjCorkIos9H
         2UKlEap/ToINRbyebihl/5JFXov1jWpc0qzu/kv5gh3FnXmy5uDSibFS1q/B2AspQv02
         5USQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=16MzfwA9bZsw3xNp3R6j4qxTk5w3H1ZK/P0n2UDrCso=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=qNtNxev/WEAk43fw7afJHoi75jjUJeW0wM99Bsds2I9eAkdAALmTyQy8J9kUnLA/GD
         /uYwBi1J9JQiUGAiVIifFSxZ0V/Cvj2jc3kG/HMpzAqsbpu0wSytYv0Hc7kKFE4RtcEH
         1pq2MgFahPXvgcu5Ign8FAwoeLuIYiDbN4CEKtqQI/ZKqjpqaY1ZxfHyhkkJH2tkMA8j
         yl0fzZObsltQ/WYMFk0aMs3twPQ9WGpfX5h5ZgnIYbLAyep6HJZgOIIus+mAK1QT5367
         W6rhT3LbVVBM8XVq7YTnBiCXAw65MeeHcbmyWZm26JG3+8++Ghchq5nPgmR1rvNXZ6lO
         0ifw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id c9-20020ac87d89000000b0041b77571889si5533122qtd.348.2023.10.23.09.50.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 09:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-MwiYyhV9MHyIHsY2W42mKA-1; Mon,
 23 Oct 2023 12:50:00 -0400
X-MC-Unique: MwiYyhV9MHyIHsY2W42mKA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D0521DD35D2
	for <blinux-list@gapps.redhat.com>; Mon, 23 Oct 2023 16:50:00 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 764F21120F; Mon, 23 Oct 2023 16:50:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB8C333231
	for <blinux-list@redhat.com>; Mon, 23 Oct 2023 16:49:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5EE2185A7A7
	for <blinux-list@redhat.com>; Mon, 23 Oct 2023 16:49:58 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-689-OuYkQqE7OnaLMV27PJ4TTg-1; Mon,
 23 Oct 2023 12:49:56 -0400
X-MC-Unique: OuYkQqE7OnaLMV27PJ4TTg-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 848843216D
	for <blinux-list@redhat.com>; Mon, 23 Oct 2023 16:49:54 +0000 (UTC)
Message-ID: <101be9d4-183c-4403-a909-ec29d279b150@jasonjgw.net>
Date: Mon, 23 Oct 2023 12:49:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: WSL using rsnapshot to copy to a Local Drive
To: blinux-list@redhat.com
References: <E1quvTZ-0001AH-S6@wb5agz.lan>
From: "'Jason White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <E1quvTZ-0001AH-S6@wb5agz.lan>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: Jason White <jason@jasonjgw.net>
Reply-To: Jason White <jason@jasonjgw.net>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Subscribe: <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>,
 <mailto:blinux-list+subscribe@redhat.com>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>


On 23/10/23 10:00, Martin McCormick wrote:
> I'm trying to backup my Windows10 world to a new SSD which is
> formatted for Windows and shows up as drive f in Windows, so far,
> so good.

If you try to do this with Linux tools, won't you lose all of the 
underlying NTFS access control lists, and possibly other metadata?

The only exception that comes to mind here would be to run Clonezilla, 
which I understand has NTFS support. In that case, you would boot from a 
Linux USB drive and run Clonezilla on the drive containing the NTFS 
partitions, with destination as the new SSD.

