Return-Path: <blinux-list+bncBC3NDNGRUAMRBJ6X6KXQMGQEB4HL75I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 038B58862B6
	for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 22:50:33 +0100 (CET)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-60ff1816749sf24753397b3.3
        for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 14:50:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711057831; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlDTXJhCvDlPrtDp9xZTuq5DMg63bg409wSZOuxRKQplNHNhmw8IWkQtzt3/v6yh7E
         /vgkc4oMOwxoGtoW1YdGWI8F4lwuEITjd2Ywtei4zjfUPGde7G0k9oVy4Pd2poxxcgMR
         PsGwQt2s8VJv2OYMlrxdSgf1Zq6D5SeJ45M2NuP3JZIg/bWlFC6J1uVubLnhOmUvg95u
         TcrpbjUdcWK9DC8spethVHYefLbjc3U9vatrGpgTmLGsQX7RhgXb96LG5AJMFNL2fgm/
         aQVu1du9TJzaO/tkiE6/jLqXIEKct7BOf3AmFSwWvGZcqoUbnQwbJn7lr21PkV/bJxKi
         3jdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=DxEUBor/HJnVLWl+9wJXwJEBDv5lCv9I+fg8UjHJiJk=;
        fh=WZ8qMgQWOWNaTov3Ztq31Hzlxxwe42INlvM5T8h8XIQ=;
        b=WI99KOW2mjhoYfyP2QT8/VnD4WpAmekSuIhTw7sR+OiwIRMd+3JhJqjyS6dar0rb1I
         9drurFL/pZfwIdN8BhB0MgxNMOKy9cCostGWt+7IjogUTW+bD5av6HjNwa9/8NWyd0Tu
         1F3S7CbxXECoNjqbQfCeUs/59kOMwEPEveImG626F+BK635EdEp328KpZtTW5nMraJTq
         cfDFqViGgjhUdHQsyaCdgwLQp1I/+lzNWxo/c9FDXBHg+xbofhYNKk50dCmU6eYfM7G1
         ccbuIFIyjlkXm39+V6cU0JmuZBVuYV+e1p/X5D11ExGd+QnY1LPXQ6tIMigSR7/fMYq5
         lRyg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711057831; x=1711662631;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DxEUBor/HJnVLWl+9wJXwJEBDv5lCv9I+fg8UjHJiJk=;
        b=fuWM/9tI5TLgGpP+H6nAwP367gmdWDm/6C66gLnqwQh4Qo8cVgl0JOsT4rEkwbQOW/
         8AO3NeNReSdbzHFQJu7e3zhdgNzvRciiUkb+LKA0EA2gNqJsmLWWWm3i6ZDibiwIcMjD
         IoSmBu4qHVlAHykEt19uVceIvSTEpL+FZp6SJHFV/rzmcpqeJDiypxmzG3+UCtys90Jf
         XN/dzgtMZFPXQVoIZpGErz+oWl8EFzPrFySWaBcEfcntqzkFk8SFUcxCdXOCOZt0K4+x
         +Y7guES8TdIMkNzRUluLNJUM5EQDkEnVp1Hl20j2HDnOcfcWxS62TUN612qXOsl0MTXz
         zOQQ==
X-Forwarded-Encrypted: i=2; AJvYcCUpwRXxYpuTezca/m06y9CzTHvSEvb85XiJJLTMpX4YjfnFTIQToix+TNb5CoqQ+Pd21vNVvVSkd5f0e8Ln8nLXS9mGX2rPvZGn
X-Gm-Message-State: AOJu0Yyxrvlkh63Xwa5UwosViaV0q/1S3E+ieaROq2yhEaU65IRBhka4
	aiYRRYKFJkjFwmBZMTb/QDfI9d+hfALPTiD4TKLKFsoWxE2v1tFjt5dgbn4tooc=
X-Google-Smtp-Source: AGHT+IFoFUbceVQtgtMuxHC6SneNpnufUa4FxnDqdGlDkxRkAR6dXhjCFyKRswjFMqrmuIXvGeFUJw==
X-Received: by 2002:a0d:e404:0:b0:609:6eb0:4714 with SMTP id n4-20020a0de404000000b006096eb04714mr509091ywe.34.1711057831565;
        Thu, 21 Mar 2024 14:50:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2d4:b0:430:8d9e:5847 with SMTP id
 a20-20020a05622a02d400b004308d9e5847ls1874802qtx.0.-pod-prod-03-us; Thu, 21
 Mar 2024 14:50:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXOFiizs+pL0WSH7RBnnV0SVY2fvRPfNHSNPW9uEAT8jGxyiCckdsr96eJjg0GZL2uM8f7B0k/CizERAQLsYLrxZLuE5q7wYvK3duWP
X-Received: by 2002:a05:622a:1394:b0:431:27fc:26b5 with SMTP id o20-20020a05622a139400b0043127fc26b5mr445601qtk.58.1711057830786;
        Thu, 21 Mar 2024 14:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711057830; cv=none;
        d=google.com; s=arc-20160816;
        b=bb4LHd0xznZeAysdJANuy+yMoUBKUnu7/cVno0TopbbZM95AwEj3sxUmnEUITbP+Th
         c+EufEoxG06Os/GrWI6KNEyp+W9cEBLv3dYAzLHZXPWMTqsDmfi6iIDW1JxDVJL7BvA1
         u/+aQeBp78FRUHBczUCkjVkKcCbAUkFutIdcPFT0SmwWAxBQr3CV497O2OPjLbEKYpkv
         Gdg3XS+AR0rBLUlXDG+khb8ad0j8azwEzb5ScWKG9m4FoOVmU/McKesP/P5yFDcBaHR8
         cL25P+W6PsbJIrFdCrOZpEb5bto2mvonX9cQpwZrg7EKbd2MlyeTrIyRUzry1fyw2SMi
         uNhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=bKrhh1wBvGEDKjFYhzBQ6RQkFrdIcF1ml9mLczsuJDo=;
        fh=rB/Dl9CIvpSmigbdsu6c006X5Mkk1djV04udk3n+r5s=;
        b=QZhAM5MkMcgI0EUjIBnck2yqoU20aHbZ3DKNn80x0ea1OeZHlZW/2TKRQwIQf+Ttjb
         JY4tRzqN2F007RmcwccqRV94BiJSLsFzfoy6DDpo3JvOi6fHecbKfkGSfyuzOkvem7la
         bu6aZeiqY+5EJWQ9haz1ZN9/mb1CQin9F/dSwBqZsSA5ZFRdGkqRwqzacaSjUZavf59e
         DfhW9VHzXn5FznWxb9eqPPPa3Ax0kPaboiBqp7EH0jljO/OWR4VvLhfXo6BEM+l90Z/9
         CfcqQuT6ZbID2WCnYSHVom0KODSnIEf/Fd0tOBwoMTLrjvmveChXkeI81uww0jn68vy+
         V4qw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v7-20020ac85787000000b0042ddadbb68esi663012qta.705.2024.03.21.14.50.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 14:50:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.148 as permitted sender) client-ip=64.147.123.148;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-618-RUEzhCjfP12YjP9WNI-dIA-1; Thu,
 21 Mar 2024 17:50:29 -0400
X-MC-Unique: RUEzhCjfP12YjP9WNI-dIA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A4EC38157C4
	for <blinux-list@gapps.redhat.com>; Thu, 21 Mar 2024 21:50:29 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 16E5CC04121; Thu, 21 Mar 2024 21:50:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D33D3C04120
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 21:50:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 812D78007A1
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 21:50:28 +0000 (UTC)
Received: from wfout5-smtp.messagingengine.com
 (wfout5-smtp.messagingengine.com [64.147.123.148]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-382-uipm0ZhMMlWizsIvknAMPA-1; Thu, 21 Mar 2024 17:50:26 -0400
X-MC-Unique: uipm0ZhMMlWizsIvknAMPA-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfout.west.internal (Postfix) with ESMTP id D09071C000BB;
	Thu, 21 Mar 2024 17:50:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Thu, 21 Mar 2024 17:50:25 -0400
X-ME-Sender: <xms:oKv8ZaKmOB_8rC-_J4PUzxdzgW4dVPuatWzTdd4kdIdxJ0lXR9UKfw>
    <xme:oKv8ZSKbIpLNpbB2xFjTJXNQAfpE_P6iuRRfOy_GPHAhl6IObsOdn4CIToUQZTiVm
    Cr0mnNUI_jYWn1BKXw>
X-ME-Received: <xmr:oKv8Zavx1MZ7PIpi9UPK99kXZHuHtP-0cEEZdWxYNmojfSMcZRKVYvoH0OKc1tBsgCLhVvaU6k_3Q3aDl_cudNcDS7YdxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrleejgdelvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:oKv8ZfbzUVL4nSHdVLRfL11HRu-rEMRi0vaSLsol8W1jUDAsXqJa1g>
    <xmx:oKv8ZRaoHyXg3A3wgzkHS0sWaYBj7WwkVzb3iuJCIUtmKtI61hQ3Yw>
    <xmx:oKv8ZbDxrMhbkJknrvwYN0LLvcS-uPtkGoa0JNbWO7Y6lkauxM1YGg>
    <xmx:oKv8ZXaZpLP7vmDQwhTYKdg9Pmsm8-WjSslSEy5uHvB25h4wx9xjjw>
    <xmx:oKv8ZVHdf2yBAdRX8FOkV5F5cbHvXauBvYh_SbRwn7-qX7Xiz3m4iyIyoDc>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Mar 2024 17:50:23 -0400 (EDT)
Date: Thu, 21 Mar 2024 14:50:21 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Martin McCormick <martin.m@suddenlink.net>
cc: x for blind general discussion <blinux-list@redhat.com>
Subject: Re: crontab -e behaves Oddly in Bookworm with Speech
In-Reply-To: <E1rnPjf-0007zA-2j@wb5agz>
Message-ID: <9c3c18bd-2949-6304-2b1d-2fae401d9b61@hubert-humphrey.com>
References: <E1rnPjf-0007zA-2j@wb5agz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.148 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well Martin, before you write the list Jude suggested, I would run your crontab 
with your editing option, switch to another console-and-run "ps -a" or "ps -A" 
and see what other processes are started. Hope that helps
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

